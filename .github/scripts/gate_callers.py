#!/usr/bin/env python3
"""Extract exact callers of ad/update gates from decoded Smali on a GitHub runner."""
from __future__ import annotations
import csv, json, re, sys
from pathlib import Path
import xml.etree.ElementTree as ET

PATTERNS = {
    "config_enable_ad_P2": re.compile(r"Lcom/snaptube/premium/configs/Config;->P2\(\)Z"),
    "config_upgrade_enabled_v4": re.compile(r"Lcom/snaptube/premium/configs/Config;->v4\(\)Z"),
    "config_hot_splash_w3": re.compile(r"Lcom/snaptube/premium/configs/Config;->w3\(Z\)Z"),
    "config_new_install_R6": re.compile(r"Lcom/snaptube/premium/configs/Config;->R6\(Ljava/lang/String;\)Z"),
    "od_preload_switch_c": re.compile(r"Lo/od;->c\(Ljava/lang/String;\)Z"),
    "od_position_enabled_v": re.compile(r"Lo/od;->v\(Ljava/lang/String;\)Z"),
    "splash_g1_h1": re.compile(r"Lcom/snaptube/ads/activity/SplashAdActivity;->[gh]1\("),
    "start_download_A_B": re.compile(r"Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->[AB]\("),
    "force_helper_register_k": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->k\(Landroid/app/Application;\)V"),
    "force_helper_show_r": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->r\(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;\)Z"),
    "force_helper_gate_o": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->o\(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;\)Z"),
    "force_helper_launch_m": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->m\(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;\)V"),
    "force_helper_finish_h_i": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->[hi]\(\)V"),
    "upgrade_priority": re.compile(r"Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;->(?:isStrongUpdate|isStrictForceUpdate|isNormalUpdate|getPriority)\("),
    "official_signature_xi7": re.compile(r"Lo/xi7;->c\(Landroid/content/Context;Z\)Z"),
    "force_activity_refs": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;"),
    "normal_activity_refs": re.compile(r"Lcom/snaptube/premium/selfupgrade/normal/NormalUpdateActivity;"),
    "check_upgrade_manager": re.compile(r"Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->[MSqt]\("),
    "ad_block_y6": re.compile(r"Lo/y6;->[ab]\(\)Z|key\.enable_ad_block"),
}
LIMIT = 3000

def main():
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    decoded = trees / "decoded"
    hits = {k: [] for k in PATTERNS}
    counts = {k: 0 for k in PATTERNS}
    scanned = 0
    for src in sorted(decoded.glob("smali*/**/*.smali")):
        scanned += 1
        current = ""
        try:
            lines = src.read_text(encoding="utf-8", errors="replace").splitlines()
        except OSError:
            continue
        for n, line in enumerate(lines, 1):
            if line.startswith(".method"):
                current = line.strip()
            for key, pat in PATTERNS.items():
                if pat.search(line):
                    counts[key] += 1
                    if len(hits[key]) < LIMIT:
                        hits[key].append({"file": str(src.relative_to(trees)), "line": n, "method": current, "text": line[:1000]})
    for key, rows in hits.items():
        with (out / f"{key}.tsv").open("w", newline="", encoding="utf-8") as f:
            w = csv.DictWriter(f, fieldnames=["file", "line", "method", "text"], delimiter="\t")
            w.writeheader(); w.writerows(rows)
    (out / "counts.json").write_text(json.dumps({"scanned_smali_files": scanned, "counts": counts, "stored": {k: len(v) for k, v in hits.items()}, "limit": LIMIT}, indent=2) + "\n")

    # Manifest declarations and network config presence.
    manifest = decoded / "AndroidManifest.xml"
    manifest_findings = {"exists": manifest.exists(), "matching_components": [], "network_config_files": []}
    if manifest.exists():
        root = ET.parse(manifest).getroot()
        app = root.find("application")
        if app is not None:
            for kind in ["activity", "activity-alias", "service", "receiver", "provider"]:
                for node in app.findall(kind):
                    name = node.get("{http://schemas.android.com/apk/res/android}name") or ""
                    if re.search(r"force|upgrade|update|splashad|interstitialad|reward|infomobi|pangle|mbridge|vungle|pubnative", name, re.I):
                        manifest_findings["matching_components"].append({"kind": kind, "name": name, "attrs": dict(node.attrib)})
        for p in decoded.rglob("*"):
            if p.is_file() and "network_security" in p.name.lower():
                manifest_findings["network_config_files"].append(str(p.relative_to(trees)))
    (out / "manifest-findings.json").write_text(json.dumps(manifest_findings, indent=2) + "\n")

    # Copy a few exact gate methods if present.
    wanted = [
        ("com/snaptube/ads/activity/SplashAdActivity", "h1_Landroid_content_Context_ZLjava_lang_String_Ljava_lang_String_Ljava_util_Map_Z.smali"),
        ("com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel", "B_Landroid_os_Bundle_Ljava_lang_String_ILjava_lang_Object_V.smali"),
        ("o/r24", "run_V.smali"),
        ("o/y6", "a_Z.smali"),
        ("o/y6", "b_Z.smali"),
    ]
    copied = []
    for cls, fname in wanted:
        src = out.parent / "targeted-41157059752" / "smali-methods" / cls / fname
        # The targeted artifact is not available here; instead extract from full smali by method header.
        for smali in decoded.glob("smali*/" + cls + ".smali"):
            text = smali.read_text(encoding="utf-8", errors="replace")
            methods = []
            cur = None
            for line in text.splitlines():
                if line.startswith(".method"):
                    cur = [line]
                elif line.startswith(".end method") and cur is not None:
                    cur.append(line); methods.append(cur); cur = None
                elif cur is not None:
                    cur.append(line)
            for m in methods:
                header = m[0]
                if (cls.endswith("SplashAdActivity") and " h1(" in header) or (cls.endswith("StartDownloadAdViewModel") and " B(" in header) or (cls == "o/r24" and " run(" in header) or (cls == "o/y6" and (" a(" in header or " b(" in header)):
                    dst = out / "methods" / cls / (re.sub(r"[^A-Za-z0-9_$.-]+", "_", header.split()[-1])[:180] + ".smali")
                    dst.parent.mkdir(parents=True, exist_ok=True)
                    dst.write_text("\n".join(m) + "\n")
                    copied.append(str(dst.relative_to(out)))
    (out / "copied-methods.json").write_text(json.dumps(copied, indent=2) + "\n")
    print(json.dumps({"scanned": scanned, "counts": counts, "copied_methods": copied, "manifest_matching_components": len(manifest_findings["matching_components"]), "network_config_files": manifest_findings["network_config_files"]}, indent=2))
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
