#!/usr/bin/env python3
"""Collect bounded HA Tunnel Plus app-owned Java/Smali evidence for functional review.

This does not execute the target APK and does not modify it.
"""
from __future__ import annotations

import csv
import json
import re
import shutil
import sys
from pathlib import Path

KEY_CLASSES = [
    "FastSSH", "ProtectedFastSSH", "HomeFragment", "MainActivity",
    "BillingManager", "Subscription", "PrefsSubscriptionStore", "HttpTokenExchange",
    "TimerConf", "AppOpenAdManager", "RewardedAdSyncController", "VoucherActivity",
    "dialog/AddTimeDialog", "dialog/RenewAccessDialog", "dialog/PayloadGen",
    "core/VpnConnection", "core/SSHTunnelService", "core/VpnStatus",
    "core/connection/SSHTunnelConnection", "core/connection/LoadBalancer",
]
AD_RE = re.compile(
    r"shouldRequestAds|MobileAds|AdView|AdRequest|AdSize|InterstitialAd|RewardedAd|"
    r"AppOpenAd|loadAd|setAdUnitId|show\(|banner|Banner|interstitial|rewarded|"
    r"SHOW_AD_MS|btnWatchAd|requestNewAdBanner|requestRewardedAd|initAds", re.I)
TIME_RE = re.compile(
    r"CountDownTimer|TimerConf|GlobalTimerConf|countDown|onStartCountdown|onExpiredState|"
    r"onRemindState|onAccessTopUp|LAST_ACCESS_TOPUP|LAST_SESSION|cool_min|per_hours|"
    r"expire|Expire|unlimited|Unlimited|remaining|Remaining|addTime|AddTime|RenewAccess", re.I)
BILL_RE = re.compile(
    r"BillingManager|BillingClient|Subscription|shouldRequestAds|isSubscribed|PRODUCT_ID|"
    r"sendSubToken|beginRedeemVoucher|purchase|Purchase|TokenExchange|subscriptionToken|"
    r"purchaseToken|State\.SUBSCRIBED|State\.NOT_SUBSCRIBED", re.I)
TUNNEL_RE = re.compile(
    r"VpnService|VpnConnection|SSHTunnelService|VpnStatus|establish|tun2socks|hev|"
    r"socks5|SSH|ssh|payload|Payload|SNI|sni|TLS_VERSIONS|LoadBalancer|protect\(|"
    r"addAddress|addRoute|addDnsServer|setMtu|Builder", re.I)


def write_json(path: Path, value) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def copy_tree(src: Path, dst: Path, max_bytes: int = 60_000_000) -> dict:
    stats = {"source": str(src), "destination": str(dst), "files": 0, "bytes": 0, "skipped": []}
    if not src.exists():
        stats["missing"] = True
        return stats
    for path in sorted(src.rglob("*")):
        if not path.is_file():
            continue
        size = path.stat().st_size
        if stats["bytes"] + size > max_bytes:
            stats["skipped"].append(str(path))
            continue
        rel = path.relative_to(src)
        out = dst / rel
        out.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(path, out)
        stats["files"] += 1
        stats["bytes"] += size
    return stats


def smali_methods(path: Path):
    text = path.read_text(encoding="utf-8", errors="replace")
    methods = []
    current = None
    for number, line in enumerate(text.splitlines(), 1):
        if line.startswith(".method "):
            current = {"signature": line, "start": number, "end": None}
            methods.append(current)
        elif line.startswith(".end method") and current is not None:
            current["end"] = number
            current = None
    return methods


def main() -> int:
    if len(sys.argv) != 2:
        print("usage: hatunnel_targeted_evidence.py WORK_ROOT", file=sys.stderr)
        return 2
    work = Path(sys.argv[1]).resolve()
    out = work / "reports" / "targeted"
    out.mkdir(parents=True, exist_ok=True)
    decoded = work / "decoded"
    jadx_sources = work / "jadx" / "sources"

    copies = []
    copies.append(copy_tree(jadx_sources / "app" / "fast" / "ssh", out / "jadx" / "app" / "fast" / "ssh"))
    for smali_dir in sorted(decoded.glob("smali*")):
        app_dir = smali_dir / "app" / "fast" / "ssh"
        if app_dir.exists():
            copies.append(copy_tree(app_dir, out / "smali" / smali_dir.name / "app" / "fast" / "ssh"))
    write_json(out / "copy-stats.json", copies)

    for rel in [
        "AndroidManifest.xml", "apktool.yml", "res/values/strings.xml", "res/values/public.xml",
        "res/xml/network_security_config.xml",
    ]:
        src = decoded / rel
        if src.is_file():
            dst = out / "decoded" / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)

    method_rows = []
    for path in sorted((out / "smali").rglob("*.smali")):
        for method in smali_methods(path):
            method_rows.append({
                "file": str(path.relative_to(out)),
                "class": path.stem,
                "signature": method["signature"],
                "start": method["start"],
                "end": method["end"],
            })
    with (out / "smali-method-index.tsv").open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["file", "class", "signature", "start", "end"], delimiter="\t")
        writer.writeheader()
        writer.writerows(method_rows)

    categories = {"ads": AD_RE, "time": TIME_RE, "billing": BILL_RE, "tunnel": TUNNEL_RE}
    hit_rows = []
    for base in [out / "jadx", out / "smali"]:
        for path in sorted(base.rglob("*")):
            if not path.is_file() or path.suffix not in {".java", ".smali"}:
                continue
            text = path.read_text(encoding="utf-8", errors="replace")
            for number, line in enumerate(text.splitlines(), 1):
                for category, pattern in categories.items():
                    if pattern.search(line):
                        hit_rows.append({
                            "category": category,
                            "file": str(path.relative_to(out)),
                            "line": number,
                            "text": line[:1200],
                        })
    with (out / "targeted-hits.tsv").open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["category", "file", "line", "text"], delimiter="\t")
        writer.writeheader()
        writer.writerows(hit_rows)

    key_summary = []
    for key in KEY_CLASSES:
        java = out / "jadx" / "app" / "fast" / "ssh" / (key + ".java")
        smali_matches = sorted((out / "smali").rglob(Path(key).name + ".smali"))
        entry = {"key": key, "java_present": java.is_file(), "smali_files": [str(p.relative_to(out)) for p in smali_matches]}
        if java.is_file():
            text = java.read_text(encoding="utf-8", errors="replace")
            entry["java_lines"] = len(text.splitlines())
            entry["java_bytes"] = java.stat().st_size
            entry["jadx_error_markers"] = len(re.findall(r"JADX (?:ERROR|WARN)", text))
        key_summary.append(entry)
    write_json(out / "key-classes.json", key_summary)

    lines = [
        "# HA Tunnel Plus targeted app-owned evidence", "",
        "Static collection only. No target execution and no APK modification.", "",
        "## Copy statistics", "", "```json", json.dumps(copies, indent=2), "```", "",
        "## Key classes", "", "| Key | Java present | Java lines | JADX markers | Smali files |", "|---|---:|---:|---:|---|",
    ]
    for entry in key_summary:
        lines.append(
            f"| {entry['key']} | {entry['java_present']} | {entry.get('java_lines', '')} | "
            f"{entry.get('jadx_error_markers', '')} | {', '.join(entry['smali_files']) or 'none'} |"
        )
    lines += ["", f"Targeted hit rows: {len(hit_rows)}", f"Smali methods indexed: {len(method_rows)}", ""]
    (out / "targeted-summary.md").write_text("\n".join(lines), encoding="utf-8")
    print(json.dumps({"copies": copies, "hits": len(hit_rows), "methods": len(method_rows)}, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
