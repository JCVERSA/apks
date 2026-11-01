#!/usr/bin/env python3
"""Isolated GitHub Actions emulator A/B test: original repack vs revision 3.

Authorized scope: temporary emulator only, fresh app installs, public test
videos, no account login, no personal-device access. Publishes sanitized
evidence only (no raw logcat, databases, cookies, or downloaded media).
"""
from __future__ import annotations
import argparse, hashlib, json, os, re, shutil, sqlite3, subprocess, time
import xml.etree.ElementTree as ET
from pathlib import Path
from urllib.parse import urlsplit

PKG = 'com.snaptube.premium'
TEST_URL = 'https://www.youtube.com/watch?v=aqz-KE-bpKQ'  # Blender, Big Buck Bunny (CC)
SAFE_TAPS = re.compile(r'^(agree|accept|allow|continue|get started|start now|next|skip|not now|later|ok|got it|close|cancel)$', re.I)
DANGEROUS = re.compile(r'uninstall|official|update now|install now|purchase|subscribe|sign in|log in', re.I)


def run(cmd, timeout=90):
    p = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=timeout)
    return p.returncode, p.stdout


def adb(*args, timeout=90):
    return run(['adb', *args], timeout=timeout)


def shell(cmd, timeout=90):
    return adb('shell', cmd, timeout=timeout)


def redact(text):
    text = re.sub(r'https?://[^\s"\'<>]+', lambda m: urlsplit(m.group(0)).scheme + '://' + urlsplit(m.group(0)).netloc + '/[redacted]', text)
    text = re.sub(r'\b[A-Za-z0-9_\-]{32,}\b', '[long-token-redacted]', text)
    return text


class Variant:
    def __init__(self, name, apk, root):
        self.name, self.apk, self.root = name, Path(apk), Path(root) / name
        self.root.mkdir(parents=True, exist_ok=True)
        self.events = []
        self.ui_nodes = []

    def event(self, kind, **kw):
        row = {'t': round(time.time(), 3), 'kind': kind, **kw}
        self.events.append(row)
        print(json.dumps(row), flush=True)

    def capture(self, stage):
        safe = re.sub(r'[^A-Za-z0-9_.-]', '_', stage)
        shell('uiautomator dump /sdcard/ab-window.xml >/dev/null 2>&1', timeout=45)
        rc, xml = adb('exec-out', 'cat', '/sdcard/ab-window.xml', timeout=45)
        nodes = []
        if rc == 0 and xml.strip().startswith(b'<?xml'):
            (self.root / f'ui-{safe}.xml').write_bytes(xml)
            try:
                for n in ET.fromstring(xml).iter('node'):
                    text, desc, rid = n.get('text',''), n.get('content-desc',''), n.get('resource-id','')
                    if text or desc or n.get('clickable') == 'true':
                        nodes.append({'text': text, 'desc': desc, 'id': rid, 'clickable': n.get('clickable'), 'bounds': n.get('bounds')})
            except ET.ParseError:
                pass
        rc, png = adb('exec-out', 'screencap', '-p', timeout=45)
        if rc == 0:
            (self.root / f'screen-{safe}.png').write_bytes(png)
        self.ui_nodes = nodes
        self.event('capture', stage=stage, visible=[n['text'] or n['desc'] or n['id'] for n in nodes if n['text'] or n['desc']][:35])
        return nodes

    def tap_node(self, node):
        m = re.findall(r'\d+', node.get('bounds',''))
        if len(m) != 4:
            return False
        x1,y1,x2,y2 = map(int,m)
        shell(f'input tap {(x1+x2)//2} {(y1+y2)//2}')
        return True

    def tap_safe(self, allow_dismiss=False):
        for n in self.ui_nodes:
            label = (n['text'] or n['desc']).strip()
            if not allow_dismiss and re.fullmatch(r'close|cancel', label, re.I):
                continue
            if label and SAFE_TAPS.fullmatch(label) and not DANGEROUS.search(label):
                if self.tap_node(n):
                    self.event('tap', label=label)
                    time.sleep(2)
                    return True
        return False

    def install_and_prepare(self):
        shell(f'pm uninstall {PKG}', timeout=90)
        rc, out = adb('install', '-r', '-g', str(self.apk), timeout=240)
        self.event('install', rc=rc, output=redact(out.decode('utf-8','replace')[-500:]))
        if rc != 0:
            raise RuntimeError('install failed')
        for perm in ('POST_NOTIFICATIONS','READ_EXTERNAL_STORAGE','WRITE_EXTERNAL_STORAGE'):
            shell(f'pm grant {PKG} android.permission.{perm} >/dev/null 2>&1')
        for op in ('MANAGE_EXTERNAL_STORAGE','SYSTEM_ALERT_WINDOW','WRITE_SETTINGS'):
            shell(f'appops set {PKG} {op} allow >/dev/null 2>&1')
        shell('logcat -c')
        shell(f'am start -n {PKG}/.activity.ExploreActivity')
        time.sleep(12)
        for i in range(8):
            self.capture(f'launch-{i}')
            if not self.tap_safe(allow_dismiss=True):
                break
        self.capture('prepared')

    def share_and_attempt_download(self):
        shell(f"am start -a android.intent.action.SEND -t text/plain --es android.intent.extra.TEXT '{TEST_URL}' -p {PKG}")
        time.sleep(15)
        self.capture('shared-0')
        for i in range(4):
            if self.tap_safe():
                self.capture(f's_shared-{i+1}')
        # Prefer a small/low-resolution format if the chooser exposes one.
        chosen = None
        for n in self.ui_nodes:
            label = (n['text'] or n['desc'])
            if re.search(r'\b(144p|240p|360p|low|small)\b', label, re.I) and not DANGEROUS.search(label):
                chosen = n; break
        if chosen:
            self.tap_node(chosen); self.event('tap_format', label=chosen['text'] or chosen['desc']); time.sleep(2)
        self.capture('before-download-tap')
        tapped = False
        for n in self.ui_nodes:
            label = (n['text'] or n['desc']).strip()
            rid = n.get('id','')
            if (re.fullmatch(r'download|start download|download now', label, re.I) or re.search(r'download.*(button|btn)', rid, re.I)) and not DANGEROUS.search(label):
                tapped = self.tap_node(n); self.event('tap_download', label=label, id=rid); break
        if not tapped:
            self.event('download_button_not_found')
        for i in range(6):
            time.sleep(20)
            self.capture(f'progress-{i}')
            rc, out = shell(f'pidof {PKG}')
            if rc != 0:
                self.event('app_process_missing'); break

    def collect_logs(self):
        rc, pid = shell(f'pidof {PKG}')
        pid = pid.decode().strip().split()[0] if rc == 0 and pid.strip() else ''
        cmd = ['adb','logcat','-d','-v','threadtime']
        if pid:
            cmd += ['--pid', pid]
        rc, raw = run(cmd, timeout=90)
        rx = re.compile(r'download|TaskError|TaskException|http|HTTP|403|416|ffmpeg|FFmpeg|mux|combine|extract|plugin|AndroidRuntime|FATAL|Exception|Error', re.I)
        lines = [redact(l) for l in raw.decode('utf-8','replace').splitlines() if rx.search(l)]
        (self.root / 'logcat-filtered.txt').write_text('\n'.join(lines[-4000:]) + '\n')
        self.event('log_lines', count=len(lines))

    def collect_databases(self):
        shell('find /data/data/' + PKG + '/databases -maxdepth 1 -type f 2>/dev/null', timeout=45)
        rc, listing = shell(f'find /data/data/{PKG}/databases -maxdepth 1 -type f 2>/dev/null')
        dbdir = self.root / 'private-db-scratch'; dbdir.mkdir(exist_ok=True)
        summaries = []
        for line in listing.decode('utf-8','replace').splitlines():
            remote = line.strip()
            if not remote or remote.endswith(('-journal','-wal','-shm')):
                continue
            local = dbdir / Path(remote).name
            adb('pull', remote, str(local), timeout=90)
            if not local.is_file():
                continue
            try:
                con = sqlite3.connect(f'file:{local}?mode=ro', uri=True)
                tables = [r[0] for r in con.execute("select name from sqlite_master where type='table'")]
                for t in tables:
                    cols = [r[1] for r in con.execute(f'pragma table_info("{t}")')]
                    if not any(re.search(r'status|error|task|download', c, re.I) for c in cols):
                        continue
                    keep = [c for c in cols if re.search(r'id|status|error|size|path|url|title|create|update|download|progress', c, re.I)]
                    if not keep:
                        continue
                    q = 'select ' + ','.join(f'"{c}"' for c in keep) + f' from "{t}" order by rowid desc limit 25'
                    rows = []
                    for row in con.execute(q):
                        item = {}
                        for c,v in zip(keep,row):
                            if isinstance(v,str) and ('http://' in v or 'https://' in v): v = redact(v)
                            elif isinstance(v,str) and '/' in v: v = Path(v).name
                            item[c] = v
                        rows.append(item)
                    summaries.append({'db': local.name, 'table': t, 'columns': cols, 'rows': rows})
                con.close()
            except sqlite3.Error as e:
                summaries.append({'db': local.name, 'error': str(e)})
        shutil.rmtree(dbdir, ignore_errors=True)
        (self.root / 'task-db-summary.json').write_text(json.dumps(summaries, indent=2, default=str) + '\n')
        self.event('db_tables', count=len(summaries))

    def collect_media_metadata(self):
        rc, listing = shell('find /sdcard/Download /sdcard/SnapTube /sdcard/Movies -type f 2>/dev/null')
        media = []
        for line in listing.decode('utf-8','replace').splitlines():
            remote = line.strip()
            if not remote.lower().endswith(('.mp4','.m4a','.mp3','.webm','.mkv','.part','.tmp')):
                continue
            rc, size = shell(f'stat -c %s \'{remote}\' 2>/dev/null')
            entry = {'file': Path(remote).name, 'size_bytes': size.decode().strip()}
            local = self.root / 'media-scratch' / Path(remote).name
            local.parent.mkdir(exist_ok=True)
            rc, _ = adb('pull', remote, str(local), timeout=180)
            if rc == 0 and local.is_file():
                entry['sha256'] = hashlib.sha256(local.read_bytes()).hexdigest()
                if shutil.which('ffprobe'):
                    rc, out = run(['ffprobe','-v','error','-show_entries','format=duration,size:stream=codec_type,codec_name','-of','json',str(local)], timeout=60)
                    entry['ffprobe_rc'] = rc
                    entry['ffprobe'] = out.decode('utf-8','replace')[:2000]
                local.unlink(missing_ok=True)
            media.append(entry)
        shutil.rmtree(self.root / 'media-scratch', ignore_errors=True)
        (self.root / 'media-metadata.json').write_text(json.dumps(media, indent=2) + '\n')
        self.event('media_files', count=len(media))

    def finish(self):
        self.collect_logs()
        self.collect_databases()
        self.collect_media_metadata()
        (self.root / 'events.json').write_text(json.dumps(self.events, indent=2) + '\n')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--original', required=True)
    ap.add_argument('--patched', required=True)
    ap.add_argument('--out', required=True)
    args = ap.parse_args()
    out = Path(args.out); out.mkdir(parents=True, exist_ok=True)
    adb('wait-for-device', timeout=180)
    adb('root', timeout=60)
    adb('wait-for-device', timeout=180)
    shell('svc power stayon true')
    results = {}
    for name, apk in (('original', args.original), ('revision3', args.patched)):
        v = Variant(name, apk, out)
        try:
            v.install_and_prepare()
            v.share_and_attempt_download()
            results[name] = 'RUNTIME_EVIDENCE_COLLECTED'
        except Exception as e:
            results[name] = f'ERROR: {e}'
            v.event('error', message=str(e))
        finally:
            try:
                v.finish()
            except Exception as e:
                v.event('collect_error', message=str(e))
                (v.root / 'events.json').write_text(json.dumps(v.events, indent=2) + '\n')
    summary = {'scope': 'Temporary GitHub Actions emulator only; fresh installs; public CC test video; no accounts',
               'test_url_host': urlsplit(TEST_URL).netloc, 'variants': results,
               'status': 'EVIDENCE_COLLECTED_REVIEW_REQUIRED',
               'note': 'A collected run is not a pass/fail verdict; inspect UI, task DB, logs and media metadata.'}
    (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print(json.dumps(summary, indent=2))
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
