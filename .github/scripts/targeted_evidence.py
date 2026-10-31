#!/usr/bin/env python3
"""Extract bounded, method-level evidence from already-decoded APK trees.

Runs only on a GitHub runner. Does not execute target code or make network calls.
"""
from __future__ import annotations

import csv
import json
import re
import shutil
import sys
from collections import Counter, defaultdict
from pathlib import Path
import xml.etree.ElementTree as ET

ANDROID = "{http://schemas.android.com/apk/res/android}"
MAX_XREFS = 1500

TARGET_CLASSES = [
    "com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper",
    "com/snaptube/premium/selfupgrade/force/ForceUpdateActivity",
    "com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper$checkForceUpdateAsync$1",
    "com/snaptube/premium/selfupgrade/normal/NormalUpdateActivity",
    "com/snaptube/premium/selfupgrade/BaseUpgradeActivity",
    "com/snaptube/premium/selfupgrade/CheckSelfUpgradeManager",
    "com/snaptube/premium/selfupgrade/CheckSelfUpgradeReceiver",
    "com/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig",
    "com/snaptube/premium/selfupgrade/incremental_upgrade/a",
    "com/snaptube/premium/selfupgrade/incremental_upgrade/b",
    "com/snaptube/premium/dialog/PiraticalApkWarningDialogFragment",
    "com/snaptube/premium/dialog/UpgradeDialog",
    "com/snaptube/premium/activity/ExploreActivity",
    "com/snaptube/premium/activity/LandingActivity",
    "com/snaptube/premium/configs/Config",
    "com/snaptube/premium/ads/SplashAdManager",
    "com/snaptube/premium/ads/a",
    "com/snaptube/premium/ads/AdsConfigV2",
    "com/snaptube/premium/ads/AdsOnlineConfig",
    "com/snaptube/premium/activity/SimpleInterstitialAdActivity",
    "com/snaptube/premium/ads/splash/RewardSplashAdActivity",
    "com/snaptube/ads/activity/SplashAdActivity",
    "com/snaptube/ads/base/AdsPos",
    "com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel",
    "com/snaptube/premium/preview/audio/AudioPreviewAdController",
    "com/snaptube/premium/webview/module/CustomMoModule",
    "o/pi2",
    "o/xi7",
    "o/sq5",
    "o/rh8",
    "o/od",
    "o/w25",
    "o/nc6",
    "o/uh1",
    "o/er6",
]

XREF_PATTERNS = {
    "force_helper_calls": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->"),
    "upgrade_priority_calls": re.compile(r"Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->(?:isStrongUpdate|isStrictForceUpdate|isNormalUpdate|getPriority)"),
    "force_activity_refs": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;"),
    "piratical_warning_refs": re.compile(r"Lcom/snaptube/premium/dialog/PiraticalApkWarningDialogFragment;"),
    "official_signature_check": re.compile(r"Lo/xi7;->c|is_not_an_official_version|update_for_crack"),
    "ad_enable_keys": re.compile(r"key\.enable_ad|key\.is_upgrade_enabled|key\.is_hot_splash_ads_enabled|key\.vip_no_ad_success_time_millis|key\.vip_switch_max_no_ad_buffer_seconds|key\.ad_switch_new_install_enable|key\.guide_switch_new_install_enable"),
    "splash_ad_calls": re.compile(r"Lcom/snaptube/ads/activity/SplashAdActivity;->g1|Lcom/snaptube/premium/ads/SplashAdManager;->|RewardSplashAdActivity"),
    "start_download_ad_calls": re.compile(r"Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->A|START_DOWNLOAD_INTERSTITIAL"),
    "ad_sdk_init": re.compile(r"TTAdSdk;->init|MBridgeSDK;->init|VungleAds;->init|PubnativeAdModel;->|MediationEventBus"),
    "webview_ad_bridge": re.compile(r"addJavascriptInterface|setJavaScriptEnabled|CustomMoModule|AdHandler"),
}


def attr(node, name, default=None):
    return node.get(ANDROID + name, default)


def write_json(path: Path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def copy_if_exists(src: Path, dst: Path, limit: int = 2_000_000):
    if src.is_file() and src.stat().st_size <= limit:
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(src, dst)
        return True
    return False


def extract_smali_methods(text: str):
    methods = []
    current = None
    for number, line in enumerate(text.splitlines(), 1):
        if line.startswith(".method"):
            current = {"header": line.strip(), "start": number, "lines": [line]}
        elif line.startswith(".end method") and current is not None:
            current["lines"].append(line)
            current["end"] = number
            methods.append(current)
            current = None
        elif current is not None:
            current["lines"].append(line)
    return methods


def main():
    if len(sys.argv) != 3:
        print("usage: targeted_evidence.py TREES_ROOT OUTPUT_ROOT", file=sys.stderr)
        return 2
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    decoded = trees / "decoded"
    jadx = trees / "jadx" / "sources"
    copied = []
    missing = []

    # Manifest and network configuration.
    for rel in ["AndroidManifest.xml", "apktool.yml", "assets/ads_guide.json", "assets/full_sites.json"]:
        src = decoded / rel
        if copy_if_exists(src, out / "decoded" / rel):
            copied.append(str(src.relative_to(trees)))
        else:
            missing.append(str(src.relative_to(trees)))
    for src in sorted((decoded / "res").glob("xml*/network_security_config.xml")) if (decoded / "res").exists() else []:
        dst = out / "decoded" / src.relative_to(decoded)
        if copy_if_exists(src, dst):
            copied.append(str(src.relative_to(trees)))

    manifest_summary = {}
    components = []
    manifest_path = decoded / "AndroidManifest.xml"
    if manifest_path.exists():
        root = ET.parse(manifest_path).getroot()
        app = root.find("application")
        manifest_summary = {
            "package": root.get("package"),
            "application": {k: attr(app, k) for k in ["name", "label", "debuggable", "allowBackup", "usesCleartextTraffic", "networkSecurityConfig", "extractNativeLibs", "requestLegacyExternalStorage", "preserveLegacyExternalStorage"]} if app is not None else {},
        }
        if app is not None:
            for kind in ["activity", "activity-alias", "service", "receiver", "provider"]:
                for node in app.findall(kind):
                    components.append({
                        "kind": kind,
                        "name": attr(node, "name"),
                        "exported": attr(node, "exported"),
                        "enabled": attr(node, "enabled"),
                        "permission": attr(node, "permission"),
                        "process": attr(node, "process"),
                        "authorities": attr(node, "authorities"),
                        "intent_filter_actions": [attr(a, "name") for f in node.findall("intent-filter") for a in f.findall("action")],
                    })
    write_json(out / "manifest-summary.json", {"summary": manifest_summary, "components": components})
    with (out / "components.tsv").open("w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["kind", "name", "exported", "enabled", "permission", "process", "authorities", "intent_filter_actions"], delimiter="\t")
        writer.writeheader()
        for c in components:
            row = dict(c)
            row["intent_filter_actions"] = "|".join(x or "" for x in c["intent_filter_actions"])
            writer.writerow(row)

    # Target Java and Smali classes. Full files are bounded; method extracts are always produced.
    method_index = []
    for cls in TARGET_CLASSES:
        java_src = jadx / (cls + ".java")
        if copy_if_exists(java_src, out / "jadx" / (cls + ".java")):
            copied.append(str(java_src.relative_to(trees)))
        smali_matches = sorted(decoded.glob("smali*/" + cls + ".smali")) if decoded.exists() else []
        if not smali_matches:
            missing.append(cls + ".smali")
        for src in smali_matches:
            rel = src.relative_to(decoded)
            if copy_if_exists(src, out / "decoded" / rel, limit=500_000):
                copied.append(str(src.relative_to(trees)))
            text = src.read_text(encoding="utf-8", errors="replace")
            for method in extract_smali_methods(text):
                name = method["header"]
                if not any(token in name for token in ["->", " "]):
                    continue
                method_name = name.split()[-1] if name.split() else name
                safe = re.sub(r"[^A-Za-z0-9_$.-]+", "_", method_name)[:180]
                dst = out / "smali-methods" / cls / (safe + ".smali")
                dst.parent.mkdir(parents=True, exist_ok=True)
                dst.write_text("\n".join(method["lines"]) + "\n", encoding="utf-8")
                method_index.append({"class": cls, "file": str(rel), "method": name, "start": method["start"], "end": method["end"], "extract": str(dst.relative_to(out))})
    write_json(out / "smali-method-index.json", method_index)

    # Cross-references across all Smali trees.
    xrefs = {key: [] for key in XREF_PATTERNS}
    xref_counts = Counter()
    scanned = 0
    if decoded.exists():
        for src in sorted(decoded.glob("smali*/**/*.smali")):
            scanned += 1
            try:
                lines = src.read_text(encoding="utf-8", errors="replace").splitlines()
            except OSError:
                continue
            current_method = ""
            for number, line in enumerate(lines, 1):
                if line.startswith(".method"):
                    current_method = line.strip()
                for key, pattern in XREF_PATTERNS.items():
                    if pattern.search(line):
                        xref_counts[key] += 1
                        if len(xrefs[key]) < MAX_XREFS:
                            xrefs[key].append({"file": str(src.relative_to(trees)), "line": number, "method": current_method, "text": line[:1000]})
    write_json(out / "xref-counts.json", {"scanned_smali_files": scanned, "counts": dict(xref_counts), "stored": {k: len(v) for k, v in xrefs.items()}, "limit_per_pattern": MAX_XREFS})
    for key, rows in xrefs.items():
        with (out / f"xrefs-{key}.tsv").open("w", newline="", encoding="utf-8") as f:
            writer = csv.DictWriter(f, fieldnames=["file", "line", "method", "text"], delimiter="\t")
            writer.writeheader()
            writer.writerows(rows)

    # JADX coverage markers by file.
    error_files = Counter()
    warn_files = Counter()
    if jadx.exists():
        for src in jadx.rglob("*.java"):
            try:
                text = src.read_text(encoding="utf-8", errors="replace")
            except OSError:
                continue
            e = len(re.findall(r"JADX ERROR", text))
            w = len(re.findall(r"JADX WARN", text))
            if e:
                error_files[str(src.relative_to(trees))] = e
            if w:
                warn_files[str(src.relative_to(trees))] = w
    write_json(out / "jadx-coverage-by-file.json", {"error_files": error_files.most_common(200), "warning_files": warn_files.most_common(200), "total_error_markers": sum(error_files.values()), "total_warning_markers": sum(warn_files.values())})

    # Ad SDK package inventory from decompiled directory names.
    ad_roots = ["com/bytedance", "com/mbridge", "com/vungle", "net/pubnative", "com/google/ads", "com/snaptube/ads", "com/snaptube/premium/ads", "com/snaptube/ad", "com/snaptube/ads_log_v2"]
    ad_inventory = {}
    for root in ad_roots:
        base = jadx / root
        if base.exists():
            ad_inventory[root] = {"java_files": len(list(base.rglob("*.java"))), "top_subpackages": sorted([p.name for p in base.iterdir() if p.is_dir()])[:80]}
    write_json(out / "ad-sdk-inventory.json", ad_inventory)

    # Native library oddities: very small files and metadata already produced by readelf.
    native = []
    lib_root = decoded / "lib"
    if lib_root.exists():
        for src in sorted(lib_root.rglob("*.so")):
            data = src.read_bytes()
            native.append({"path": str(src.relative_to(trees)), "size": len(data), "first_64_bytes_hex": data[:64].hex(), "first_64_bytes_text": data[:64].decode("utf-8", errors="replace") if len(data) <= 64 else None})
    write_json(out / "native-library-inventory.json", native)

    summary = [
        "# Targeted static evidence extract", "",
        f"- Scanned Smali files for xrefs: {scanned}",
        f"- Copied bounded source files: {len(copied)}",
        f"- Missing target classes/files: {len(missing)}",
        f"- Extracted Smali methods: {len(method_index)}",
        f"- JADX error markers: {sum(error_files.values())}; warning markers: {sum(warn_files.values())}", "",
        "## Cross-reference counts", "",
    ]
    summary += [f"- {k}: {v} (stored {len(xrefs[k])})" for k, v in xref_counts.items()]
    summary += ["", "## Missing targets", ""] + [f"- {m}" for m in missing[:100]]
    summary += ["", "## Boundary", "", "Static evidence only. No APK modification, execution, device test, or server-response confirmation."]
    (out / "targeted-summary.md").write_text("\n".join(summary) + "\n", encoding="utf-8")
    write_json(out / "copied-files.json", {"copied": copied, "missing": missing})
    print("\n".join(summary))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
