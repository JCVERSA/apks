#!/usr/bin/env python3
"""Copy bounded full JADX source tree and key resources for ZArchiver static review.

Runs only on the GitHub Actions runner. Does not execute the APK.
"""
from __future__ import annotations

import json
import re
import shutil
from pathlib import Path

WORK = Path(__import__("os").environ["WORK_ROOT"])
REPORT = Path(__import__("os").environ["REPORT_DIR"])
JADX = WORK / "jadx" / "sources"
DECODED = WORK / "decoded"
REPORT.mkdir(parents=True, exist_ok=True)

MAX_TOTAL_BYTES = 30 * 1024 * 1024
MAX_FILE_BYTES = 2 * 1024 * 1024

copied = []
total = 0
skipped = []
for p in sorted(JADX.rglob("*.java")):
    size = p.stat().st_size
    if size > MAX_FILE_BYTES or total + size > MAX_TOTAL_BYTES:
        skipped.append({"path": str(p.relative_to(JADX)), "size": size})
        continue
    rel = Path("jadx-sources") / p.relative_to(JADX)
    dst = REPORT / rel
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(p, dst)
    copied.append({"path": str(rel), "size": size})
    total += size

resources = []
for rel in [
    "AndroidManifest.xml",
    "apktool.yml",
    "res/values/strings.xml",
    "res/values/arrays.xml",
    "res/values/public.xml",
]:
    src = DECODED / rel
    if src.is_file() and src.stat().st_size <= MAX_FILE_BYTES:
        dst = REPORT / "decoded" / rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        resources.append(str(Path("decoded") / rel))
for src in sorted((DECODED / "res" / "xml").glob("*.xml")):
    if src.stat().st_size <= MAX_FILE_BYTES:
        dst = REPORT / "decoded" / "res" / "xml" / src.name
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        resources.append(str(Path("decoded/res/xml") / src.name))

PATTERNS = {
    "root_shizuku": r"(?i)\b(su|superuser|shizuku|sui|root)\b|Runtime\.getRuntime\(\)\.exec|ProcessBuilder|/system/(xbin|bin)/su",
    "plugin_ipc": r"(?i)plugin|bindService|ServiceConnection|Messenger|ContentProvider|grantUriPermission|checkCallingPermission|Binder",
    "apk_install": r"(?i)REQUEST_INSTALL_PACKAGES|MANAGE_UNKNOWN_APP_SOURCES|package-archive|PackageInstaller|installPackage|\.apks|\.xapk|\.apkm",
    "network_update": r"(?i)https?://|HttpURLConnection|URLConnection|OkHttp|WebView|loadUrl|checkUpdate|newVersion|latestVersion|market://|play\.google\.com",
    "storage_saf": r"(?i)MANAGE_EXTERNAL_STORAGE|ACTION_OPEN_DOCUMENT_TREE|DocumentsContract|takePersistableUriPermission|requestLegacyExternalStorage|getExternalStorage",
    "dynamic_code": r"(?i)DexClassLoader|PathClassLoader|loadClass|System\.load|Runtime\.getRuntime\(\)\.load|dalvik\.system",
    "crypto_backup": r"(?i)Cipher|MessageDigest|SecretKey|KeyStore|allowBackup|BackupAgent|SharedPreferences|MODE_WORLD",
    "webview_js": r"(?i)WebView|setJavaScriptEnabled|addJavascriptInterface|loadUrl|evaluateJavascript",
}
compiled = {k: re.compile(v) for k, v in PATTERNS.items()}
hits = {k: [] for k in PATTERNS}
for item in copied:
    p = REPORT / item["path"]
    try:
        text = p.read_text(errors="replace")
    except OSError:
        continue
    lines = text.splitlines()
    for cat, rx in compiled.items():
        count = 0
        first = []
        for i, line in enumerate(lines, 1):
            if rx.search(line):
                count += 1
                if len(first) < 8:
                    first.append({"line": i, "text": line.strip()[:240]})
        if count:
            hits[cat].append({"file": item["path"], "count": count, "first": first})
for cat in hits:
    hits[cat].sort(key=lambda x: (-x["count"], x["file"]))
    hits[cat] = hits[cat][:80]

key_classes = [
    "ru/zdevs/zarchiver/ZApp.java",
    "ru/zdevs/zarchiver/ZArchiver.java",
    "ru/zdevs/zarchiver/service/ZArchiverService.java",
    "ru/zdevs/zarchiver/io/SAF.java",
    "ru/zdevs/zarchiver/provider/FileProvider.java",
    "ru/zdevs/zarchiver/provider/ArchiveFileProvider.java",
    "ru/zdevs/zarchiver/provider/PluginFileProvider.java",
    "ru/zdevs/zarchiver/activity/InstallApksDlg.java",
    "a0/c.java",
    "o0/a.java",
    "t0/b.java",
    "e0/h.java",
    "f0/a.java",
    "h1/c.java",
    "l0/b.java",
    "g0/r.java",
    "g0/n.java",
    "rikka/shizuku/ShizukuProvider.java",
]
presence = {k: (JADX / k).is_file() for k in key_classes}

summary = {
    "jadx_java_files_total": len(list(JADX.rglob("*.java"))),
    "copied_java_files": len(copied),
    "copied_java_bytes": total,
    "skipped_java_files": skipped,
    "resources_copied": resources,
    "key_class_presence": presence,
    "pattern_hit_files": {k: len(v) for k, v in hits.items()},
    "limits": {"max_total_bytes": MAX_TOTAL_BYTES, "max_file_bytes": MAX_FILE_BYTES},
    "runtime_execution": "NOT TESTED",
}
(REPORT / "deep-summary.json").write_text(json.dumps(summary, indent=2) + "\n")
(REPORT / "deep-hits.json").write_text(json.dumps(hits, indent=2) + "\n")
print(json.dumps(summary, indent=2))
