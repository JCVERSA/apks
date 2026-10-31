#!/usr/bin/env python3
"""Pre-patch safety evidence: reward/download callers and exact patch target headers."""
from __future__ import annotations
import csv, json, re, sys
from pathlib import Path

PATTERNS = {
    "start_download_J_callers": re.compile(r"Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->J\(Landroid/content/Context;Landroid/os/Bundl"),
    "start_download_K_L_callers": re.compile(r"Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->[KL]\("),
    "reward_loader_refs": re.compile(r"Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader"),
    "reward_splash_refs": re.compile(r"Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity"),
    "reward_callback_gn7": re.compile(r"Lo/gn7;->"),
    "reward_event_jn7": re.compile(r"Lo/jn7;->"),
    "splash_i1_l1_m1_callers": re.compile(r"Lcom/snaptube/ads/activity/SplashAdActivity;->[ilm]1\("),
    "force_helper_m_r_o_callers": re.compile(r"Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->[mro]\("),
    "ads_manager_h_callers": re.compile(r"Lo/ba3;->h\(\)Z"),
}
COPY_CLASSES = [
    "com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel",
    "com/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader",
    "com/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1",
    "com/snaptube/ads/activity/SplashAdActivity",
    "com/snaptube/premium/ads/splash/RewardSplashAdActivity",
    "com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper",
    "o/b9",
    "o/b9$a",
    "o/gn7",
    "o/jn7",
    "o/be",
    "o/ba3",
    "o/vh3",
    "o/m01",
    "o/w25",
    "o/w25$a",
    "o/od",
    "com/snaptube/premium/configs/Config",
    "com/snaptube/premium/ads/splash/HotSplashAdManager",
]
TARGETS = [
    ("com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper", ".method public final r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z"),
    ("com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper", ".method public final o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z"),
    ("com/snaptube/ads/activity/SplashAdActivity", ".method public static i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z"),
    ("com/snaptube/ads/activity/SplashAdActivity", ".method public static l1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z"),
    ("com/snaptube/ads/activity/SplashAdActivity", ".method public static m1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z"),
    ("com/snaptube/premium/ads/splash/HotSplashAdManager", ".method public static final e()Z"),
    ("com/snaptube/premium/ads/splash/HotSplashAdManager", ".method public static final g()V"),
    ("com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel", ".method public static final z(Landroid/os/Bundle;Ljava/lang/String;)V"),
    ("com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel", ".method public final w(Landroid/os/Bundle;)Z"),
    ("o/od", ".method public static v(Ljava/lang/String;)Z"),
    ("o/od", ".method public static c(Ljava/lang/String;)Z"),
    ("o/w25", ".method public h()Lo/ne3;"),
    ("com/snaptube/premium/configs/Config", ".method public static P2()Z"),
]
LIMIT = 800

def main():
    trees = Path(sys.argv[1]).resolve()
    out = Path(sys.argv[2]).resolve()
    out.mkdir(parents=True, exist_ok=True)
    decoded = trees / "decoded"
    jadx = trees / "jadx"
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
    copied = []
    for cls in COPY_CLASSES:
        for smali in decoded.glob("smali*/" + cls + ".smali"):
            if smali.stat().st_size <= 800_000:
                dst = out / "smali" / cls.replace("$", "_") / smali.name
                dst.parent.mkdir(parents=True, exist_ok=True)
                dst.write_bytes(smali.read_bytes())
                copied.append(str(dst.relative_to(out)))
        for java in jadx.glob("sources/" + cls + ".java"):
            if java.stat().st_size <= 800_000:
                dst = out / "jadx" / cls.replace("$", "_") / java.name
                dst.parent.mkdir(parents=True, exist_ok=True)
                dst.write_bytes(java.read_bytes())
                copied.append(str(dst.relative_to(out)))
    target_checks = []
    for cls, header in TARGETS:
        matches = []
        for smali in decoded.glob("smali*/" + cls + ".smali"):
            text = smali.read_text(encoding="utf-8", errors="replace")
            if header in text.splitlines():
                matches.append(str(smali.relative_to(trees)))
        target_checks.append({"class": cls, "header": header, "matches": matches, "ok": len(matches) == 1})
    (out / "target-checks.json").write_text(json.dumps(target_checks, indent=2) + "\n")
    (out / "copied-files.json").write_text(json.dumps(copied, indent=2) + "\n")
    summary = {"scanned_smali_files": scanned, "counts": counts, "stored": {k: len(v) for k, v in hits.items()}, "targets_ok": all(t["ok"] for t in target_checks), "target_checks": target_checks}
    (out / "safety-summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(json.dumps({"scanned": scanned, "counts": counts, "targets_ok": summary["targets_ok"], "copied": len(copied)}, indent=2))
    return 0 if summary["targets_ok"] else 1

if __name__ == "__main__":
    raise SystemExit(main())
