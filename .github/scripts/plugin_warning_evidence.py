#!/usr/bin/env python3
"""Collect runtime window evidence and server-delivered plugin APKs in an isolated emulator.

Authorized scope: temporary GitHub Actions emulator only, fresh install of the
read-only original APK, public test URL, no accounts, no personal-device access.
This script does not download media; it only captures UI/window state and pulls
the plugin APKs that the app itself downloads so they can be statically scanned.
"""
from __future__ import annotations
import argparse, json, re, subprocess, time
from pathlib import Path

PKG = 'com.snaptube.premium'
TEST_URL = 'https://www.dailymotion.com/video/x80bs9c'
SAFE = re.compile(r'^(agree|accept|allow|continue|get started|start now|start|next|skip|not now|later|ok|got it|close|cancel|wait|enjoy now)(?:\s*[→›»])?$', re.I)
DANGEROUS = re.compile(r'uninstall|official|update now|install now|purchase|subscribe|sign in|log in', re.I)


def run(cmd, timeout=90):
    p = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, timeout=timeout)
    return p.returncode, p.stdout


def adb(*args, timeout=90):
    return run(['adb', *args], timeout=timeout)


def shell(cmd, timeout=90):
    return adb('shell', cmd, timeout=timeout)


def capture_text(out: Path, name: str):
    shell('uiautomator dump /sdcard/plugin-evidence-window.xml >/dev/null 2>&1', timeout=45)
    rc, xml = adb('exec-out', 'cat', '/sdcard/plugin-evidence-window.xml', timeout=45)
    if rc == 0:
        (out / f'ui-{name}.xml').write_bytes(xml)
    rc, window = shell('dumpsys window windows', timeout=60)
    if rc == 0:
        (out / f'window-{name}.txt').write_bytes(window)
    rc, top = shell('dumpsys activity top', timeout=60)
    if rc == 0:
        (out / f'activity-top-{name}.txt').write_bytes(top)


def tap_safe(out: Path):
    rc, xml = adb('exec-out', 'cat', '/sdcard/plugin-evidence-window.xml', timeout=45)
    if rc != 0:
        return False
    import xml.etree.ElementTree as ET
    try:
        root = ET.fromstring(xml)
    except ET.ParseError:
        return False
    for n in root.iter('node'):
        label = (n.get('text') or n.get('content-desc') or '').strip()
        rid = n.get('resource-id', '')
        if rid in ('android:id/aerr_wait', 'android:id/ok', 'com.snaptube.premium:id/tv_action_btn') and not DANGEROUS.search(label):
            pass
        elif not (label and SAFE.fullmatch(label) and not DANGEROUS.search(label)):
            continue
        m = re.findall(r'\d+', n.get('bounds', ''))
        if len(m) == 4:
            x1, y1, x2, y2 = map(int, m)
            shell(f'input tap {(x1+x2)//2} {(y1+y2)//2}')
            time.sleep(2)
            return True
    return False


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--apk', required=True)
    ap.add_argument('--out', required=True)
    ap.add_argument('--plugin-dir', required=True)
    args = ap.parse_args()
    out = Path(args.out); out.mkdir(parents=True, exist_ok=True)
    plugin_dir = Path(args.plugin_dir); plugin_dir.mkdir(parents=True, exist_ok=True)
    events = []

    def event(kind, **kw):
        row = {'t': round(time.time(), 3), 'kind': kind, **kw}
        events.append(row)
        print(json.dumps(row), flush=True)

    adb('wait-for-device', timeout=180)
    adb('root', timeout=60)
    adb('wait-for-device', timeout=180)
    shell('svc power stayon true')
    shell(f'pm uninstall {PKG}', timeout=90)
    rc, install = adb('install', '-r', '-g', args.apk, timeout=240)
    event('install', rc=rc, output=install.decode('utf-8', 'replace')[-500:])
    if rc != 0:
        raise SystemExit('install failed')
    for perm in ('POST_NOTIFICATIONS', 'READ_EXTERNAL_STORAGE', 'WRITE_EXTERNAL_STORAGE'):
        shell(f'pm grant {PKG} android.permission.{perm} >/dev/null 2>&1')
    shell('logcat -c')
    shell(f'am start -n {PKG}/.activity.ExploreActivity')
    time.sleep(15)
    for i in range(20):
        capture_text(out, f'launch-{i}')
        if not tap_safe(out):
            time.sleep(2)
            if i > 6:
                break
    capture_text(out, 'prepared')
    shell('input keyevent KEYCODE_HOME')
    time.sleep(1)
    shell(f"am start -a android.intent.action.SEND -t text/plain --es android.intent.extra.TEXT '{TEST_URL}' -p {PKG}")
    time.sleep(20)
    capture_text(out, 'shared')
    event('shared_capture', url_host='www.dailymotion.com')
    # Preserve directory/process evidence so moved or renamed plugin artifacts are visible.
    rc, pid = shell(f'pidof {PKG}')
    pid = pid.decode().strip().split()[0] if rc == 0 and pid.strip() else ''
    for name, cmd in (
        ('plugin-dir-listing', f'ls -laR /data/user/0/{PKG}/files/plugin /data/user/0/{PKG}/app_plugins /data/data/{PKG}/files/plugin /data/data/{PKG}/app_plugins 2>&1'),
        ('plugin-file-find', f'find /data/user/0/{PKG} /data/data/{PKG} -type f 2>/dev/null'),
    ):
        rc, data = shell(cmd, timeout=90)
        (out / f'{name}.txt').write_bytes(data)
    if pid:
        rc, maps = shell(f'cat /proc/{pid}/maps 2>/dev/null', timeout=90)
        if rc == 0:
            lines = [l for l in maps.decode('utf-8', 'replace').splitlines() if re.search(r'plugin|\.apk|\.dex|\.jar|app_plugins', l, re.I)]
            (out / 'process-maps-plugin.txt').write_text('\n'.join(lines) + '\n')
        rc, meminfo = shell(f'dumpsys meminfo --package {PKG}', timeout=90)
        if rc == 0:
            (out / 'meminfo.txt').write_bytes(meminfo)

    # Wait for the app's own plugin downloads, then pull plugin APKs/artifacts.
    pulled = []
    seen = set()
    for attempt in range(12):
        rc, listing = shell(f'find /data/user/0/{PKG} /data/data/{PKG} -type f 2>/dev/null', timeout=90)
        candidates = []
        for line in listing.decode('utf-8', 'replace').splitlines():
            remote = line.strip()
            if not remote or remote in seen:
                continue
            if re.search(r'/files/plugin/|/app_plugins/|/plugins/', remote) and remote.endswith(('.apk', '.jar', '.zip', '.dex')):
                candidates.append(remote)
        if pid:
            rc, maps = shell(f'cat /proc/{pid}/maps 2>/dev/null', timeout=60)
            for line in maps.decode('utf-8', 'replace').splitlines():
                m = re.search(r'(/data/[^\s]+\.(?:apk|jar|zip|dex))', line)
                if m and re.search(r'plugin|app_plugins', m.group(1), re.I) and m.group(1) not in seen:
                    candidates.append(m.group(1))
        for remote in candidates:
            seen.add(remote)
            safe_name = remote.strip('/').replace('/', '__')
            local = plugin_dir / safe_name
            if local.exists():
                continue
            rc, _ = adb('pull', remote, str(local), timeout=120)
            if rc == 0 and local.is_file():
                pulled.append({'remote': remote, 'local': str(local), 'size_bytes': local.stat().st_size})
        if pulled:
            break
        time.sleep(10)
    event('plugin_apks_pulled', count=len(pulled), files=pulled)
    rc, logcat = shell('logcat -d -v threadtime', timeout=90)
    if rc == 0:
        rx = re.compile(r'plugin|OfficialWarning|PluginContext|piratical|ClassLoader|site_extractor|video_search|DexClassLoader|jz5|lz5', re.I)
        lines = [l for l in logcat.decode('utf-8', 'replace').splitlines() if rx.search(l)]
        (out / 'logcat-plugin-filtered.txt').write_text('\n'.join(lines[-4000:]) + '\n')
    (out / 'events.json').write_text(json.dumps(events, indent=2) + '\n')
    (out / 'summary.json').write_text(json.dumps({'status': 'EVIDENCE_COLLECTED', 'plugin_apks': pulled}, indent=2) + '\n')


if __name__ == '__main__':
    main()
