#!/usr/bin/env python3
"""Scan the original outer APK for every DexClassLoader-style plugin loader and
every official-warning display path. Stdlib only; heavy decode happens on the
GitHub Actions runner. Publishes text evidence, not the APK.
"""
from __future__ import annotations
import json, os, re, shutil
from pathlib import Path

work = Path(os.environ['WORK_ROOT']).resolve()
repo = Path(os.environ.get('GITHUB_WORKSPACE', Path.cwd())).resolve()
apk = Path(os.environ.get('APK_PATH', repo / 'google_drive/SnapTube.apk')).resolve()
decoded = work / 'decoded'
out = Path(os.environ['REPORT_DIR']).resolve()
out.mkdir(parents=True, exist_ok=True)

smali_files = sorted(decoded.glob('smali*/*.smali')) + sorted(decoded.glob('smali*/**/*.smali'))
smali_files = sorted(set(smali_files))
method_re = re.compile(r'^\.method\s+(.+)$')
class_re = re.compile(r'^\.class\s+(.+)$')
super_re = re.compile(r'^\.super\s+(.+)$')

loader_subs = []
loader_news = []
warning_refs = []
context_refs = []
copied = set()

warning_rx = re.compile(r'Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog(?:\$[^;]*)?;->(<init>|show|h|x|onCreate|onStart|n|u|v|w)\(')
context_rx = re.compile(r'Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil(?:\$[^;]*)?;->(checkOfficialWarning|access\$000|a)\(')
new_loader_rx = re.compile(r'new-instance\s+[^,]+,\s*Ldalvik/system/(DexClassLoader|PathClassLoader|InMemoryDexClassLoader);')
super_loader_rx = re.compile(r'^\.super\s+Ldalvik/system/(DexClassLoader|PathClassLoader|InMemoryDexClassLoader);')

for f in smali_files:
    rel = str(f.relative_to(decoded))
    text = f.read_text(encoding='utf-8', errors='replace')
    lines = text.splitlines()
    cls = next((class_re.match(l).group(1) for l in lines if class_re.match(l)), '')
    sup = next((super_re.match(l).group(1) for l in lines if super_re.match(l)), '')
    if super_loader_rx.search(text):
        methods = [method_re.match(l).group(1) for l in lines if method_re.match(l)]
        loader_subs.append({'file': rel, 'class': cls, 'super': sup, 'methods': methods})
        copied.add(f)
    current_method = ''
    for i, line in enumerate(lines, 1):
        m = method_re.match(line)
        if m:
            current_method = m.group(1)
        if new_loader_rx.search(line):
            loader_news.append({'file': rel, 'method': current_method, 'line': i, 'text': line.strip()})
            copied.add(f)
        if warning_rx.search(line):
            warning_refs.append({'file': rel, 'method': current_method, 'line': i, 'text': line.strip()})
            copied.add(f)
        if context_rx.search(line):
            context_refs.append({'file': rel, 'method': current_method, 'line': i, 'text': line.strip()})
            copied.add(f)

copy_dir = out / 'smali'
for f in sorted(copied):
    dest = copy_dir / f.relative_to(decoded)
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(f, dest)

summary = {
    'status': 'EVIDENCE_COLLECTED',
    'apk': str(apk),
    'smali_files_scanned': len(smali_files),
    'dex_classloader_subclasses': loader_subs,
    'dex_classloader_new_instance_count': len(loader_news),
    'official_warning_ref_count': len(warning_refs),
    'plugin_context_ref_count': len(context_refs),
    'copied_smali_files': len(copied),
}
(out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
(out / 'loader-subclasses.json').write_text(json.dumps(loader_subs, indent=2) + '\n')
(out / 'loader-new-instances.json').write_text(json.dumps(loader_news, indent=2) + '\n')
(out / 'official-warning-refs.json').write_text(json.dumps(warning_refs, indent=2) + '\n')
(out / 'plugin-context-refs.json').write_text(json.dumps(context_refs, indent=2) + '\n')
print(json.dumps(summary, indent=2))
