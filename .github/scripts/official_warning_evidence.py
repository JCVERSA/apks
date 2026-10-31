#!/usr/bin/env python3
"""Trace the official-app warning and crack-exit paths without changing the APK."""
from __future__ import annotations
import csv
import json
import re
import sys
from pathlib import Path

PATTERNS = {
    "official_signature_check": re.compile(r"Lo/xi7;->c\(Landroid/content/Context;Z\)Z"),
    "signature_helper_any": re.compile(r"Lo/xi7;->"),
    "official_warning_class": re.compile(r"Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;"),
    "extractor_piratical_classes": re.compile(r"Lcom/snaptube/extractor/pluginlib/piratical/"),
    "crack_exit_intent": re.compile(r"phoenix\.intent\.action\.EXIT_FOR_CRACK"),
    "crack_code_extra": re.compile(r"crack_code"),
    "official_warning_telemetry": re.compile(r"not_an_official_version_popup|is_not_an_official_version"),
    "official_site_navigation": re.compile(r"getOfficialSiteUrl"),
    "upgrade_dialog_intent": re.compile(r"snaptube\.intent\.action\.SHOW_UPGRADE_DIALOG"),
    "upgrade_dialog_class": re.compile(r"Lcom/snaptube/premium/dialog/UpgradeDialog;->"),
    "official_signature_literal": re.compile(r"be135353437d704f3a37e2b413d040a5ddff4f19"),
}
COPY_CLASSES = {
    "o/xi7", "o/i80", "o/rf5", "o/xl", "o/et5",
    "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog",
    "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a",
    "com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment",
    "com/snaptube/premium/dialog/UpgradeDialog",
    "com/snaptube/premium/selfupgrade/BaseUpgradeActivity",
    "com/snaptube/premium/selfupgrade/incremental_upgrade/b",
    "com/snaptube/premium/selfupgrade/incremental_upgrade/b$f",
    "com/snaptube/premium/activity/ExploreActivity",
    "com/snaptube/premium/activity/ExploreActivity$d",
    "com/snaptube/premium/activity/DownloadDialogWrapperActivity",
    "com/snaptube/premium/activity/ExternalDownloadDialogWrapperActivity",
    "com/snaptube/premium/user/activity/MeAboutActivity",
}
METHOD_COPY_PATTERNS = {k: v for k, v in PATTERNS.items() if k != "signature_helper_any"}
MAX_FILE = 800_000
MAX_HITS = 1500


def methods(lines: list[str]):
    start = None
    for n, line in enumerate(lines):
        if line.startswith(".method"):
            start = n
        elif line.startswith(".end method") and start is not None:
            yield start, n, lines[start:n + 1]
            start = None


def main() -> int:
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    decoded = trees / "decoded"
    sources = trees / "jadx" / "sources"
    out.mkdir(parents=True, exist_ok=True)
    hits = {k: [] for k in PATTERNS}
    counts = {k: 0 for k in PATTERNS}
    matching_files: set[Path] = set()
    scanned = 0
    for src in sorted(decoded.glob("smali*/**/*.smali")):
        scanned += 1
        lines = src.read_text(encoding="utf-8", errors="replace").splitlines()
        current = ""
        matched = False
        for n, line in enumerate(lines, 1):
            if line.startswith(".method"):
                current = line.strip()
            for key, pattern in PATTERNS.items():
                if pattern.search(line):
                    counts[key] += 1
                    matched = True
                    if len(hits[key]) < MAX_HITS:
                        hits[key].append({"file": str(src.relative_to(trees)), "line": n, "method": current, "text": line[:1200]})
        if matched:
            matching_files.add(src)
    for key, rows in hits.items():
        with (out / f"{key}.tsv").open("w", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=["file", "line", "method", "text"], delimiter="\t")
            writer.writeheader()
            writer.writerows(rows)

    copied = []
    def copy(src: Path, relative: Path) -> None:
        if src.is_file() and src.stat().st_size <= MAX_FILE:
            dst = out / relative
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_bytes(src.read_bytes())
            copied.append(str(dst.relative_to(out)))

    # Full named classes plus any class containing a warning/crack reference.
    classes = set(COPY_CLASSES)
    for src in matching_files:
        cls = re.sub(r"^smali[^/]*/", "", str(src.relative_to(decoded))).removesuffix(".smali")
        classes.add(cls)
    for cls in sorted(classes):
        for smali in decoded.glob("smali*/" + cls + ".smali"):
            copy(smali, Path("smali") / (cls.replace("$", "_") + ".smali"))
        java = sources / (cls + ".java")
        copy(java, Path("jadx") / (cls.replace("$", "_") + ".java"))

    # Exact enclosing methods, including in classes too large to copy wholesale.
    method_index = []
    for src in sorted(matching_files):
        lines = src.read_text(encoding="utf-8", errors="replace").splitlines()
        cls = re.sub(r"^smali[^/]*/", "", str(src.relative_to(decoded))).removesuffix(".smali")
        for start, end, body in methods(lines):
            text = "\n".join(body)
            keys = [k for k, p in METHOD_COPY_PATTERNS.items() if p.search(text)]
            if not keys:
                continue
            name = re.search(r"\s([A-Za-z0-9_$<>]+)\(", body[0])
            stem = (name.group(1) if name else "method").replace("<", "_").replace(">", "_")
            dst = Path("methods") / cls.replace("$", "_") / f"{stem}-{start + 1}.smali"
            (out / dst.parent).mkdir(parents=True, exist_ok=True)
            (out / dst).write_text(text + "\n", encoding="utf-8")
            method_index.append({"class": cls, "header": body[0], "source_line": start + 1, "patterns": keys, "file": str(dst)})
            copied.append(str(dst))

    for name in ["fragment_piratical_apk_warning.xml", "upgrade_dialog.xml"]:
        for src in decoded.glob("res/layout*/" + name):
            copy(src, Path("resources") / src.relative_to(decoded / "res"))
    string_re = re.compile(r'<string name="(?:update_official[^"]*|update_for_crack|crack[^"]*)"[^>]*>.*?</string>', re.S)
    strings = decoded / "res/values/strings.xml"
    if strings.is_file():
        matches = string_re.findall(strings.read_text(encoding="utf-8", errors="replace"))
        (out / "official-warning-strings.xml").write_text("<resources>\n" + "\n".join(matches) + "\n</resources>\n", encoding="utf-8")
    public = decoded / "res/values/public.xml"
    if public.is_file():
        rows = [line for line in public.read_text(encoding="utf-8", errors="replace").splitlines() if re.search(r'name="(?:update_official[^"]*|update_for_crack|fragment_piratical_apk_warning|upgrade_dialog)"', line)]
        (out / "official-warning-resource-ids.xml").write_text("<resources>\n" + "\n".join(rows) + "\n</resources>\n", encoding="utf-8")
    summary = {"scanned_smali_files": scanned, "counts": counts, "stored": {k: len(v) for k, v in hits.items()}, "matching_smali_files": len(matching_files), "copied_classes": sorted(classes), "copied_file_count": len(copied)}
    (out / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    (out / "method-index.json").write_text(json.dumps(method_index, indent=2) + "\n")
    (out / "copied-files.json").write_text(json.dumps(sorted(set(copied)), indent=2) + "\n")
    print(json.dumps({"scanned": scanned, "counts": counts, "matching_files": len(matching_files), "copied": len(copied)}, indent=2))
    return 0 if scanned > 40000 and counts["official_warning_class"] and counts["crack_exit_intent"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
