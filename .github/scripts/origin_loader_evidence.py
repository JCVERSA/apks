#!/usr/bin/env python3
"""Trace the embedded google/origin.apk loader and compare inner warning gates."""
from __future__ import annotations
import csv, hashlib, json, re, sys, zipfile
from pathlib import Path

ORIGIN_RE = re.compile(r"google/origin\.apk|origin\.apk")
LOADER_RE = re.compile(r"Ldalvik/system/(?:DexClassLoader|PathClassLoader|InMemoryDexClassLoader|DexFile);|createPackageContext|getPackageCodePath|addAssetPath|loadApk|loadPlugin|DelegateApplication|attachBaseContext")
INNER_TARGETS = [
    ("com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog", ".method public static final h(Landroid/content/Context;)Z"),
    ("com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a", ".method public static final d(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V"),
    ("com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a", ".method public final c(Landroid/content/Context;)Z"),
    ("com/snaptube/premium/selfupgrade/BaseUpgradeActivity", ".method public onCreate(Landroid/os/Bundle;)V"),
    ("com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper", ".method public final r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z"),
    ("com/snaptube/premium/configs/Config", ".method public static P2()Z"),
]
MAX = 800_000


def sha(p: Path) -> str:
    h = hashlib.sha256()
    with p.open('rb') as f:
        for c in iter(lambda: f.read(1 << 20), b''):
            h.update(c)
    return h.hexdigest()


def methods(lines):
    start = None
    for i, l in enumerate(lines):
        if l.startswith('.method'):
            start = i
        elif l.startswith('.end method') and start is not None:
            yield start, i, lines[start:i+1]
            start = None


def scan(decoded: Path, regexes: dict, out: Path, prefix: str):
    hits = {k: [] for k in regexes}
    counts = {k: 0 for k in regexes}
    files = set()
    n = 0
    for src in sorted(decoded.glob('smali*/**/*.smali')):
        n += 1
        lines = src.read_text(encoding='utf-8', errors='replace').splitlines()
        current = ''
        matched = False
        for ln, line in enumerate(lines, 1):
            if line.startswith('.method'):
                current = line.strip()
            for k, rx in regexes.items():
                if rx.search(line):
                    counts[k] += 1
                    matched = True
                    if len(hits[k]) < 2000:
                        hits[k].append({'file': str(src.relative_to(decoded)), 'line': ln, 'method': current, 'text': line[:1200]})
        if matched:
            files.add(src)
    for k, rows in hits.items():
        with (out / f'{prefix}-{k}.tsv').open('w', newline='', encoding='utf-8') as f:
            w = csv.DictWriter(f, fieldnames=['file','line','method','text'], delimiter='\t')
            w.writeheader(); w.writerows(rows)
    return n, counts, files


def copy_class(decoded: Path, sources: Path, cls: str, out: Path):
    copied = []
    for smali in decoded.glob('smali*/' + cls + '.smali'):
        if smali.stat().st_size <= MAX:
            dst = out / 'smali' / (cls.replace('$','_') + '.smali')
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_bytes(smali.read_bytes()); copied.append(str(dst.relative_to(out)))
    java = sources / (cls + '.java')
    if java.is_file() and java.stat().st_size <= MAX:
        dst = out / 'jadx' / (cls.replace('$','_') + '.java')
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_bytes(java.read_bytes()); copied.append(str(dst.relative_to(out)))
    return copied


def main():
    outer_trees = Path(sys.argv[1]).resolve()
    inner_decoded = Path(sys.argv[2]).resolve()
    original_apk = Path(sys.argv[3]).resolve()
    out = Path(sys.argv[4]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    outer_decoded = outer_trees / 'decoded'
    outer_sources = outer_trees / 'jadx' / 'sources'

    outer_n, outer_counts, outer_files = scan(outer_decoded, {'origin_asset': ORIGIN_RE, 'loader_api': LOADER_RE}, out, 'outer')
    copied = []
    origin_classes = set()
    for src in outer_files:
        text = src.read_text(encoding='utf-8', errors='replace')
        if ORIGIN_RE.search(text):
            cls = re.sub(r'^smali[^/]*/', '', str(src.relative_to(outer_decoded))).removesuffix('.smali')
            origin_classes.add(cls)
    for cls in sorted(origin_classes):
        copied += copy_class(outer_decoded, outer_sources, cls, out / 'outer-origin')
        # Also copy sibling classes in same package to catch the loader package.
        pkg = cls.rsplit('/',1)[0]
        for smali in outer_decoded.glob('smali*/' + pkg + '/*.smali'):
            c2 = re.sub(r'^smali[^/]*/', '', str(smali.relative_to(outer_decoded))).removesuffix('.smali')
            copied += copy_class(outer_decoded, outer_sources, c2, out / 'outer-origin')
    # Exact enclosing methods for origin/loader hits.
    method_index = []
    for src in sorted(outer_files):
        lines = src.read_text(encoding='utf-8', errors='replace').splitlines()
        cls = re.sub(r'^smali[^/]*/', '', str(src.relative_to(outer_decoded))).removesuffix('.smali')
        for s,e,body in methods(lines):
            text = '\n'.join(body)
            keys = [k for k,rx in {'origin_asset':ORIGIN_RE,'loader_api':LOADER_RE}.items() if rx.search(text)]
            if not keys: continue
            name = re.search(r'\s([A-Za-z0-9_$<>]+)\(', body[0])
            stem = (name.group(1) if name else 'method').replace('<','_').replace('>','_')
            dst = out / 'outer-methods' / cls.replace('$','_') / f'{stem}-{s+1}.smali'
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text(text+'\n', encoding='utf-8')
            method_index.append({'class':cls,'header':body[0],'line':s+1,'patterns':keys,'file':str(dst.relative_to(out))})
            copied.append(str(dst.relative_to(out)))

    # Inner APK inventory + signature/badging are produced by the workflow; here scan gates.
    inner_n, inner_counts, inner_files = scan(inner_decoded, {
        'official_warning': re.compile(r'OfficialWarningDialog|PiraticalApkWarning|buildForbiddenResult|FORBIDDEN|piratical|guide_download|guide_uninstall'),
        'origin_asset': ORIGIN_RE,
    }, out, 'inner')
    inner_checks = []
    for cls, header in INNER_TARGETS:
        matches = list(inner_decoded.glob('smali*/' + cls + '.smali'))
        found = []
        for m in matches:
            if header in m.read_text(encoding='utf-8', errors='replace').splitlines():
                found.append(str(m.relative_to(inner_decoded)))
        inner_checks.append({'class':cls,'header':header,'matches':found,'ok':len(found)==1})
        if matches:
            copied += copy_class(inner_decoded, Path('/nonexistent'), cls, out / 'inner-targets')
    # Copy inner warning/extractor methods.
    for src in sorted(inner_files):
        cls = re.sub(r'^smali[^/]*/', '', str(src.relative_to(inner_decoded))).removesuffix('.smali')
        if not any(x in cls for x in ['OfficialWarning','Piratical','ExtractorWrapper','AppForceUpdateHelper','BaseUpgradeActivity']):
            continue
        lines = src.read_text(encoding='utf-8', errors='replace').splitlines()
        for s,e,body in methods(lines):
            name = re.search(r'\s([A-Za-z0-9_$<>]+)\(', body[0])
            stem = (name.group(1) if name else 'method').replace('<','_').replace('>','_')
            dst = out / 'inner-methods' / cls.replace('$','_') / f'{stem}-{s+1}.smali'
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text('\n'.join(body)+'\n', encoding='utf-8')
            copied.append(str(dst.relative_to(out)))

    with zipfile.ZipFile(original_apk) as z:
        inner_names = [n for n in z.namelist() if n.startswith('google/')]
    summary = {
        'outer_scanned': outer_n, 'outer_counts': outer_counts, 'outer_origin_classes': sorted(origin_classes),
        'inner_scanned': inner_n, 'inner_counts': inner_counts, 'inner_target_checks': inner_checks,
        'outer_google_members': inner_names,
        'copied_count': len(set(copied)),
    }
    (out/'summary.json').write_text(json.dumps(summary, indent=2)+'\n')
    (out/'method-index.json').write_text(json.dumps(method_index, indent=2)+'\n')
    (out/'copied-files.json').write_text(json.dumps(sorted(set(copied)), indent=2)+'\n')
    print(json.dumps({'outer_counts':outer_counts,'origin_classes':sorted(origin_classes),'inner_counts':inner_counts,'inner_targets_ok':all(c['ok'] for c in inner_checks),'copied':len(set(copied))}, indent=2))
    return 0 if origin_classes else 1

if __name__ == '__main__':
    raise SystemExit(main())
