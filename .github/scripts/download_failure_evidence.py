#!/usr/bin/env python3
"""Read-only trace of SnapTube's media transfer, retry, error and merge paths.

Uses the already-produced GitHub Actions static trees. No APK changes, device
actions, account access or live media requests are performed by this script.
"""
from __future__ import annotations
import csv, json, re, sys
from collections import deque
from pathlib import Path

EXACT = {
    'com/snaptube/taskManager/CombinTask',
    'com/snaptube/taskManager/M4ANativeLib',
    'com/snaptube/taskManager/M4a2Mp3Task',
    'com/snaptube/taskManager/FfmpegTaskScheduler',
    'com/snaptube/taskManager/TaskMessageCenter',
    'com/snaptube/taskManager/datasets/TaskInfo',
    'com/snaptube/taskManager/ffmpeg/FFmpegHelper',
    'com/snaptube/taskManager/task/TaskError',
    'com/snaptube/taskManager/task/TaskException',
    'com/snaptube/taskManager/task/TaskTrace',
    'com/snaptube/taskManager/task/video/MetaInfoHelper',
    'com/snaptube/taskManager/task/video/VideoMetaInfoHelper',
    'com/snaptube/taskManager/task/video/AdditionExtractManager',
    'com/snaptube/premium/files/pojo/DownloadData',
    'com/phoenix/download/card/model/TaskCardModel',
    'com/snaptube/premium/files/downloading/DownloadingViewModel',
    'com/snaptube/premium/files/downloading/DownloadingTaskFragment',
    'com/snaptube/video/videoextractor/impl/MobiuspaceVideoExtractor',
    'o/e93', 'o/a93', 'o/t83',
}
PREFIXES = (
    'com/snaptube/taskManager/task/video/',
    'com/wandoujia/download/rpc/',
    'com/wandoujia/download/model/',
    'com/wandoujia/download/storage/',
    'com/wandoujia/download/utils/',
)
PATCH_CALLS = {
    'ad_config': re.compile(r'Lcom/snaptube/premium/configs/Config;->P2\('),
    'ad_placement': re.compile(r'Lo/od;->(?:v|c)\('),
    'ad_engine': re.compile(r'Lo/w25;->h\('),
    'download_ad': re.compile(r'Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->(?:z|w)\('),
    'official_check': re.compile(r'Lo/xi7;->c\('),
    'official_warning': re.compile(r'Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog(?:\$a)?;->(?:h|c|i|j|d)\('),
    'extractor_plugin': re.compile(r'Lcom/snaptube/plugin/PluginId\$2;->(?:load|shouldDownload)\('),
    'crack_exit': re.compile(r'Lcom/snaptube/premium/activity/ExploreActivity;->m1\('),
}
ERROR_RX = re.compile(r'TaskError|TaskException|HTTP|[Ff]orbidden|403|416|retry|Retry|ERROR|error[Cc]ode|errorCode|ffmpeg|FFmpeg|[Mm]ux|[Cc]ombin|[Mm]erge')
MAX_FILE = 2_000_000
MAX_CLASSES = 180
MAX_METHOD_HITS = 2400


def app_class(cls: str) -> bool:
    return cls.startswith(('com/snaptube/', 'com/wandoujia/', 'com/phoenix/', 'o/'))


def method_ranges(lines):
    start = None
    for i, line in enumerate(lines):
        if line.startswith('.method'):
            start = i
        elif line == '.end method' and start is not None:
            yield start, lines[start:i+1]
            start = None


def main():
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    decoded = trees / 'decoded'
    sources = trees / 'jadx' / 'sources'
    out.mkdir(parents=True, exist_ok=True)
    index = {}
    for p in decoded.glob('smali*/**/*.smali'):
        cls = p.relative_to(decoded).as_posix().split('/', 1)[1][:-6]
        # The application has one definition per class; duplicate framework
        # stubs are not expected in these APK DEX files.
        index.setdefault(cls, p)
    seeds = {c for c in index if c in EXACT or (c.startswith(PREFIXES) and '$' not in c)}
    # Include app-specific superclass/interface dependencies, but not Android,
    # Java, Kotlin or advertising SDK hierarchies.
    queue = deque((c, 0) for c in sorted(seeds))
    selected = set()
    while queue:
        cls, depth = queue.popleft()
        if cls in selected or cls not in index or not app_class(cls):
            continue
        if len(selected) >= MAX_CLASSES:
            break
        selected.add(cls)
        if depth >= 3:
            continue
        head = index[cls].read_text(encoding='utf-8', errors='replace')[:16000]
        for m in re.finditer(r'^\.(?:super|implements) L([^;\n]+);', head, re.M):
            dep = m.group(1)
            if dep not in selected:
                queue.append((dep, depth+1))
    copied = []
    for cls in sorted(selected):
        p = index[cls]
        if p.stat().st_size <= MAX_FILE:
            dst = out / 'smali' / (cls.rsplit('/', 1)[0] + '/' + cls.rsplit('/', 1)[-1].replace('$', '_') + '.smali')
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_bytes(p.read_bytes())
            copied.append(str(dst.relative_to(out)))
        j = sources / (cls + '.java')
        if j.is_file() and j.stat().st_size <= MAX_FILE:
            dst = out / 'jadx' / (cls.rsplit('/', 1)[0] + '/' + cls.rsplit('/', 1)[-1].replace('$', '_') + '.java')
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_bytes(j.read_bytes())
            copied.append(str(dst.relative_to(out)))
    hits = []
    error_classes = set()
    scanned = 0
    skipped_detail_methods = 0
    for cls, p in sorted(index.items()):
        scanned += 1
        lines = p.read_text(encoding='utf-8', errors='replace').splitlines()
        for start, body in method_ranges(lines):
            text = '\n'.join(body)
            categories = [name for name, rx in PATCH_CALLS.items() if rx.search(text)]
            if app_class(cls) and 'Lcom/snaptube/taskManager/task/TaskError;' in text:
                categories.append('task_error_reference')
                error_classes.add(cls)
            if cls in selected and ERROR_RX.search(text):
                categories.append('transfer_or_merge_detail')
            if not categories:
                continue
            if len(hits) >= MAX_METHOD_HITS and not any(k in PATCH_CALLS for k in categories):
                skipped_detail_methods += 1
                continue
            header = body[0]
            match = re.search(r'\s([A-Za-z0-9_$<>]+)\(', header)
            name = (match.group(1) if match else 'method').replace('<', '_').replace('>', '_')
            rel = 'methods/' + cls.replace('$', '_') + f'/{name}-{start+1}.smali'
            dst = out / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text(text + '\n', encoding='utf-8')
            hits.append({'categories': ','.join(categories), 'class': cls, 'header': header,
                         'line': start+1, 'file': rel,
                         'evidence': ' | '.join(x.strip() for x in body if any(rx.search(x) for rx in PATCH_CALLS.values()) or 'TaskError;' in x)[:1600]})
    with (out / 'method-hits.tsv').open('w', newline='', encoding='utf-8') as f:
        w = csv.DictWriter(f, fieldnames=['categories','class','header','line','file','evidence'], delimiter='\t')
        w.writeheader(); w.writerows(hits)
    # Preserve human-readable error strings and their original resource IDs.
    for name in ('strings.xml', 'public.xml'):
        p = decoded / 'res/values' / name
        if p.is_file():
            rows = [x for x in p.read_text(encoding='utf-8', errors='replace').splitlines()
                    if re.search(r'download|network|merge|mux|convert|retry|fail|error|forbidden', x, re.I)]
            (out / ('resource-' + name + '.txt')).write_text('\n'.join(rows) + '\n')
    summary = {
        'status': 'EVIDENCE_COLLECTED_NOT_RUNTIME_DIAGNOSED',
        'scanned_smali_files': scanned,
        'selected_classes': sorted(selected),
        'task_error_referencing_classes': sorted(error_classes),
        'copied_class_files': len(copied),
        'method_hits': len(hits),
        'detail_limit_reached': skipped_detail_methods > 0,
        'skipped_detail_methods': skipped_detail_methods,
        'patched_call_categories': {k: sum(k in x['categories'].split(',') for x in hits) for k in PATCH_CALLS},
        'limitations': ['Static evidence only', 'No failing device error code or logcat supplied yet',
                        'No claim that a particular patch caused the reported transfer failures'],
    }
    (out / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    (out / 'copied-files.json').write_text(json.dumps(sorted(set(copied)), indent=2) + '\n')
    print(json.dumps({k: v for k, v in summary.items() if k not in ('selected_classes','task_error_referencing_classes')}, indent=2))
    return 0 if selected and hits else 1

if __name__ == '__main__':
    raise SystemExit(main())
