#!/usr/bin/env python3
"""Copy the site_extractor plugin load path and all AvailabilityChecker delegation sites."""
from __future__ import annotations
import csv, json, re, sys
from pathlib import Path

CLASSES = [
    'com/snaptube/extractor/pluginlib/common/AvailabilityChecker',
    'com/snaptube/extractor/pluginlib/common/QuickDownloadConfigProvider',
    'com/snaptube/extractor/pluginlib/sites/extract/BackgroundWebExtractProvider',
    'com/snaptube/extractor/pluginlib/utils/PluginContextUtil',
    'com/snaptube/extractor/pluginlib/ExtractorWrapper',
    'com/snaptube/plugin/PluginId',
    'com/snaptube/plugin/PluginId$2',
    'com/snaptube/plugin/a',
    'com/snaptube/plugin/c16',
    'com/snaptube/premium/app/PhoenixApplication',
    'o/nd2', 'o/lz5', 'o/jz5', 'o/kz5', 'o/c16',
]
RX = re.compile(r'pluginChecker|site_extractor|loadPluginImpl|AvailabilityChecker;->|Lo/nd2;->|Lo/kz5;->|PhoenixApplication;->O\(|PhoenixApplication;->D\(|OfficialWarningDialog|buildForbiddenResult|FORBIDDEN|shouldDownload|tryLoadNewestVersion')
MAX = 1_500_000


def methods(lines):
    start = None
    for i, l in enumerate(lines):
        if l.startswith('.method'):
            start = i
        elif l.startswith('.end method') and start is not None:
            yield start, i, lines[start:i+1]
            start = None


def main():
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    decoded = trees / 'decoded'
    sources = trees / 'jadx' / 'sources'
    copied = []
    for cls in CLASSES:
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
    hits = []
    n = 0
    for src in sorted(decoded.glob('smali*/**/*.smali')):
        n += 1
        lines = src.read_text(encoding='utf-8', errors='replace').splitlines()
        cls = re.sub(r'^smali[^/]*/', '', str(src.relative_to(decoded))).removesuffix('.smali')
        for s,e,body in methods(lines):
            text = '\n'.join(body)
            if not RX.search(text):
                continue
            name = re.search(r'\s([A-Za-z0-9_$<>]+)\(', body[0])
            stem = (name.group(1) if name else 'method').replace('<','_').replace('>','_')
            dst = out / 'methods' / cls.replace('$','_') / f'{stem}-{s+1}.smali'
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text(text+'\n', encoding='utf-8')
            copied.append(str(dst.relative_to(out)))
            hits.append({'class':cls,'header':body[0],'line':s+1,'file':str(dst.relative_to(out))})
    with (out/'hits.tsv').open('w', newline='', encoding='utf-8') as f:
        w = csv.DictWriter(f, fieldnames=['class','header','line','file'], delimiter='\t')
        w.writeheader(); w.writerows(hits)
    (out/'summary.json').write_text(json.dumps({'scanned':n,'classes':CLASSES,'hit_methods':len(hits),'copied':len(set(copied))}, indent=2)+'\n')
    print(json.dumps({'scanned':n,'hit_methods':len(hits),'copied':len(set(copied))}))
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
