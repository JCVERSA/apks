#!/usr/bin/env python3
"""Scan decoded server-delivered plugin APKs for official-warning/classloader evidence."""
from __future__ import annotations
import argparse, hashlib, json, re, shutil
from pathlib import Path

PATTERNS = {
    'official_warning_class': re.compile(r'OfficialWarningDialog|PiraticalApkWarningDialogFragment', re.I),
    'piratical_package': re.compile(r'com/snaptube/extractor/pluginlib/piratical|com\.snaptube\.extractor\.pluginlib\.piratical', re.I),
    'official_ui_strings': re.compile(r'Please Install the|Official Snaptube|Go to uninstall|Go to download|official version', re.I),
    'plugin_context_warning': re.compile(r'PluginContextUtil|checkOfficialWarning|setAppContextToPlugin', re.I),
    'classloader': re.compile(r'DexClassLoader|PathClassLoader|InMemoryDexClassLoader|ClassLoader|findClass|loadClass|defineClass', re.I),
    'signature_hash': re.compile(r'Lo/xl;->c|be135353437d704f3a37e2b413d040a5ddff4f19|SHA1|GET_SIGNATURES', re.I),
}


def sha256(p: Path) -> str:
    h = hashlib.sha256()
    with p.open('rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''):
            h.update(chunk)
    return h.hexdigest()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--plugin-dir', required=True)
    ap.add_argument('--decoded-root', required=True)
    ap.add_argument('--report-dir', required=True)
    args = ap.parse_args()
    plugin_dir = Path(args.plugin_dir)
    decoded_root = Path(args.decoded_root)
    report = Path(args.report_dir)
    report.mkdir(parents=True, exist_ok=True)
    smali_out = report / 'smali'
    smali_out.mkdir(exist_ok=True)
    plugins = []
    for apk in sorted(plugin_dir.glob('*.apk')):
        name = apk.stem
        decoded = decoded_root / name
        entry = {'apk': apk.name, 'size_bytes': apk.stat().st_size, 'sha256': sha256(apk), 'decoded': str(decoded), 'hits': {k: 0 for k in PATTERNS}, 'files': []}
        if not decoded.exists():
            entry['error'] = 'decoded directory missing'
            plugins.append(entry)
            continue
        for path in sorted(decoded.rglob('*')):
            if not path.is_file():
                continue
            if path.suffix not in ('.smali', '.xml', '.json', '.properties'):
                continue
            try:
                text = path.read_text(encoding='utf-8', errors='replace')
            except OSError:
                continue
            matched = [k for k, rx in PATTERNS.items() if rx.search(text)]
            if not matched:
                continue
            for k in matched:
                entry['hits'][k] += 1
            rel = path.relative_to(decoded)
            entry['files'].append({'file': str(rel), 'patterns': matched})
            # Copy only evidence hits, preserving plugin/relative path.
            dest = smali_out / name / rel
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, dest)
        plugins.append(entry)
    summary = {'status': 'EVIDENCE_COLLECTED', 'plugin_count': len(plugins), 'plugins': plugins}
    (report / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print(json.dumps(summary, indent=2))


if __name__ == '__main__':
    main()
