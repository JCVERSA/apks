#!/usr/bin/env python3
"""Build a bounded, reproducible static-evidence inventory from APK tool outputs.

This script never executes target code and makes no network requests. Search hits
are leads, not proof of runtime behavior. Truncation is reported explicitly.
"""
from __future__ import annotations

import csv
import hashlib
import json
import re
import sys
import zipfile
from collections import Counter, defaultdict
from pathlib import Path
from urllib.parse import urlsplit
import xml.etree.ElementTree as ET

ANDROID = "{http://schemas.android.com/apk/res/android}"
TEXT_SUFFIXES = {
    ".java", ".smali", ".xml", ".json", ".txt", ".properties", ".yml", ".yaml",
    ".js", ".html", ".htm", ".css", ".cfg", ".ini", ".md", ".csv", ".tsv",
}
PATTERNS = {
    "update_strong": re.compile(
        r"force[\s_-]*updat|force[\s_-]*upgrad|mandatory[\s_-]*updat|"
        r"must[\s_-]*updat|compulsory[\s_-]*updat|minimum[\s_-]*version|"
        r"min[\s_-]*version|latest[\s_-]*version|new[\s_-]*version|"
        r"check[\s_-]*updat|check[\s_-]*upgrad|update[\s_-]*dialog|"
        r"upgrade[\s_-]*dialog|update[\s_-]*force|upgrade[\s_-]*force", re.I),
    "update_general": re.compile(
        r"versionCode|version_code|versionName|version_name|app[\s_-]*upgrade|"
        r"app[\s_-]*update|update[\s_-]*url|upgrade[\s_-]*url|"
        r"newVersion|latestVersion|updateAvailable|needUpdate|needUpgrade|"
        r"showUpdate|showUpgrade|updatePrompt|upgradePrompt", re.I),
    "ad_sdk": re.compile(
        r"com[./]google[./]android[./]gms[./]ads|com[./]applovin|"
        r"com[./]bytedance[./]sdk[./]openadsdk|com[./]pangle|"
        r"com[./]vungle|com[./]unity3d[./](?:ads|services[./]ads)|"
        r"com[./]ironsource|com[./]facebook[./]ads|com[./]mopub|"
        r"com[./]inmobi|com[./]chartboost|com[./]mintegral|"
        r"com[./]mbridge|com[./]adcolony|com[./]fyber|com[./]admost", re.I),
    "ad_lifecycle": re.compile(
        r"MobileAds|AdRequest|AdLoader|InterstitialAd|RewardedAd|RewardAd|"
        r"NativeAd|AdView|AdListener|loadAd\(|loadAds\(|showAd\(|"
        r"showInterstitial|showBanner|showNative|adUnitId|ad_unit_id|"
        r"placementId|placement_id|adsEnabled|ads_enabled|show_ads|"
        r"showAds|adConfig|ad_config|adStrategy|ad_strategy", re.I),
    "security_config": re.compile(
        r"usesCleartextTraffic|networkSecurityConfig|setJavaScriptEnabled|"
        r"addJavascriptInterface|setAllowFileAccess|DexClassLoader|"
        r"PathClassLoader|loadLibrary|checkServerTrusted|CertificatePinner|"
        r"setHostnameVerifier|ALLOW_ALL_HOSTNAME_VERIFIER", re.I),
}
MAX_HITS_PER_CATEGORY = 20000
MAX_HITS_PER_FILE_CATEGORY = 200
URL_RE = re.compile(r"https?://[^\s\"'<>\\)\]}]+", re.I)


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def write_json(path: Path, value) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def attr(node, name: str, default=None):
    return node.get(ANDROID + name, default)


def safe_rel(root: Path, path: Path) -> str:
    return path.relative_to(root).as_posix()


def read_text(path: Path):
    try:
        return path.read_text(encoding="utf-8", errors="replace")
    except OSError:
        return None


def main() -> int:
    if len(sys.argv) != 4:
        print("usage: static_inventory.py WORK_ROOT ORIGINAL_APK EXPECTED_SHA256", file=sys.stderr)
        return 2
    work = Path(sys.argv[1]).resolve()
    original = Path(sys.argv[2]).resolve()
    expected = sys.argv[3]
    reports = work / "reports"
    reports.mkdir(parents=True, exist_ok=True)
    decoded = work / "decoded"
    jadx = work / "jadx"
    working_input = work / "input" / original.name

    stages = []
    stage_path = reports / "stages.tsv"
    if stage_path.exists():
        with stage_path.open(encoding="utf-8", newline="") as f:
            stages = list(csv.DictReader(f, delimiter="\t"))
    stage_map = {s["stage"]: s for s in stages}

    original_hash = sha256(original) if original.exists() else None
    working_hash = sha256(working_input) if working_input.exists() else None
    input_check = {
        "original_path": str(original),
        "original_size_bytes": original.stat().st_size if original.exists() else None,
        "expected_sha256": expected,
        "original_sha256": original_hash,
        "working_copy_sha256": working_hash,
        "original_matches_expected": original_hash == expected,
        "working_copy_matches_original": working_hash == original_hash and working_hash is not None,
    }
    write_json(reports / "input-verification.json", input_check)

    archive = {}
    if working_input.exists():
        with zipfile.ZipFile(working_input) as z:
            infos = z.infolist()
            names = [i.filename for i in infos]
            archive = {
                "member_count": len(infos),
                "uncompressed_bytes": sum(i.file_size for i in infos),
                "compressed_bytes": sum(i.compress_size for i in infos),
                "dex": [{"path": i.filename, "size": i.file_size} for i in infos if i.filename.endswith(".dex")],
                "native_libraries": [{"path": i.filename, "size": i.file_size} for i in infos if i.filename.startswith("lib/") and i.filename.endswith(".so")],
                "assets": [{"path": i.filename, "size": i.file_size} for i in infos if i.filename.startswith("assets/") and not i.is_dir()],
                "signature_related_members": [n for n in names if n.startswith("META-INF/") and n.endswith((".RSA", ".DSA", ".EC", ".SF", ".MF"))],
                "framework_indicator_paths": [n for n in names if any(x in n.lower() for x in ("flutter", "hermes", "index.android.bundle", "main.jsbundle", "il2cpp", "global-metadata.dat", "assets/www/"))],
            }

    manifest = {}
    components = []
    permissions = []
    permission_declarations = []
    metadata = []
    manifest_path = decoded / "AndroidManifest.xml"
    app_package = ""
    if manifest_path.exists():
        tree = ET.parse(manifest_path)
        root = tree.getroot()
        app_package = root.get("package", "")
        app = root.find("application")
        sdk = root.find("uses-sdk")
        manifest = {
            "package": app_package,
            "version_name": attr(root, "versionName"),
            "version_code": attr(root, "versionCode"),
            "compile_sdk_version": attr(root, "compileSdkVersion"),
            "compile_sdk_version_codename": attr(root, "compileSdkVersionCodename"),
            "min_sdk": attr(sdk, "minSdkVersion") if sdk is not None else None,
            "target_sdk": attr(sdk, "targetSdkVersion") if sdk is not None else None,
            "application": {k: attr(app, k) for k in (
                "label", "name", "icon", "roundIcon", "debuggable", "allowBackup",
                "usesCleartextTraffic", "networkSecurityConfig", "extractNativeLibs",
                "appComponentFactory", "requestLegacyExternalStorage", "preserveLegacyExternalStorage",
                "enableOnBackInvokedCallback", "localeConfig", "dataExtractionRules", "fullBackupContent",
            )} if app is not None else {},
            "supports_screens": ET.tostring(root.find("supports-screens"), encoding="unicode") if root.find("supports-screens") is not None else None,
        }
        for node in root.findall("uses-permission") + root.findall("uses-permission-sdk-23"):
            permissions.append({"name": attr(node, "name"), "max_sdk": attr(node, "maxSdkVersion"), "node": node.tag})
        for node in root.findall("permission"):
            permission_declarations.append({"name": attr(node, "name"), "protectionLevel": attr(node, "protectionLevel")})
        if app is not None:
            for node in app.findall("meta-data"):
                metadata.append({"name": attr(node, "name"), "value": attr(node, "value"), "resource": attr(node, "resource")})
            for kind in ("activity", "activity-alias", "service", "receiver", "provider"):
                for node in app.findall(kind):
                    filters = []
                    for f in node.findall("intent-filter"):
                        filters.append({
                            "actions": [attr(a, "name") for a in f.findall("action")],
                            "categories": [attr(c, "name") for c in f.findall("category")],
                            "data": [{k: v for k, v in d.attrib.items()} for d in f.findall("data")],
                        })
                    components.append({
                        "kind": kind, "name": attr(node, "name"), "exported": attr(node, "exported"),
                        "enabled": attr(node, "enabled"), "permission": attr(node, "permission"),
                        "process": attr(node, "process"), "authorities": attr(node, "authorities"),
                        "target_activity": attr(node, "targetActivity"), "intent_filters": filters,
                    })
    write_json(reports / "manifest.json", {"summary": manifest, "permissions": permissions, "permission_declarations": permission_declarations, "metadata": metadata, "components": components})

    # Default and locale-specific resource strings, plus public resource IDs.
    strings = []
    resource_ids = {}
    for path in sorted((decoded / "res").glob("values*/*.xml")) if (decoded / "res").exists() else []:
        text = read_text(path)
        if text is None:
            continue
        try:
            root = ET.fromstring(text)
        except ET.ParseError:
            continue
        if path.name == "public.xml":
            for node in root.findall("public"):
                resource_ids[(node.get("type"), node.get("name"))] = node.get("id")
        if path.name in {"strings.xml", "plurals.xml", "arrays.xml"}:
            for node in root:
                if node.tag in {"string", "plurals", "string-array"}:
                    value = " | ".join("".join(x.itertext()) for x in node.iter()) if node.tag != "string" else "".join(node.itertext())
                    strings.append({"type": node.tag, "name": node.get("name"), "value": value, "file": safe_rel(decoded, path), "qualifier": path.parent.name})
    app_name = manifest.get("application", {}).get("label")
    if isinstance(app_name, str) and app_name.startswith("@string/"):
        key = app_name.split("/", 1)[1]
        matches = [s["value"] for s in strings if s["name"] == key and s["qualifier"] == "values"]
        if matches:
            manifest["resolved_default_label"] = matches[0]
    string_candidates = {
        "update": [s for s in strings if PATTERNS["update_strong"].search(s["name"] + " " + s["value"]) or re.search(r"update|upgrade|new version|latest version", s["value"], re.I)],
        "ads": [s for s in strings if re.search(r"(^|_)ads?($|_)|advert|commercial|sponsor", s["name"], re.I) or re.search(r"\bads?\b|advertis|sponsor", s["value"], re.I)],
    }
    write_json(reports / "resource-candidates.json", string_candidates)
    write_json(reports / "resource-ids.json", {f"{t}/{n}": v for (t, n), v in resource_ids.items()})

    # Search decompiled Java and Smali, plus decoded text resources/assets.
    roots = [("jadx", jadx / "sources"), ("apktool", decoded)]
    hits = {k: [] for k in PATTERNS}
    total_matches = Counter()
    stored_per_file = Counter()
    file_scores = Counter()
    file_categories = defaultdict(Counter)
    package_counts = Counter()
    urls = {}
    scanned_files = Counter()
    app_prefix = app_package.replace(".", "/") if app_package else "com/snaptube"
    ad_app_path = re.compile(re.escape(app_prefix) + r"/.*(?:^|[/_.-])(?:ad|ads|advert|commercial)(?:[/_.-]|$)", re.I)
    searched_roots = []
    for label, base in roots:
        if not base.exists():
            continue
        searched_roots.append(str(base))
        for path in sorted(base.rglob("*")):
            if not path.is_file() or path.suffix.lower() not in TEXT_SUFFIXES:
                continue
            rel = safe_rel(work, path)
            if label == "apktool" and not (rel.startswith("decoded/assets/") or rel.startswith("decoded/res/values") or path.suffix == ".smali" or path.name in {"AndroidManifest.xml", "apktool.yml"}):
                continue
            text = read_text(path)
            if text is None:
                continue
            scanned_files[label] += 1
            if path.suffix == ".java" and label == "jadx":
                package_counts[".".join(path.parent.relative_to(base).parts[:4])] += 1
            if path.suffix == ".smali":
                package_counts[".".join(path.parent.relative_to(base).parts[:5])] += 1
            lines = text.splitlines()
            local_categories = set()
            for number, line in enumerate(lines, 1):
                for category, pattern in PATTERNS.items():
                    if not pattern.search(line):
                        continue
                    total_matches[category] += 1
                    local_categories.add(category)
                    key = (rel, category)
                    if len(hits[category]) < MAX_HITS_PER_CATEGORY and stored_per_file[key] < MAX_HITS_PER_FILE_CATEGORY:
                        hits[category].append({"file": rel, "line": number, "text": line[:1200]})
                        stored_per_file[key] += 1
                for match in URL_RE.finditer(line):
                    raw = match.group(0).rstrip(".,;")
                    try:
                        parts = urlsplit(raw)
                        if not parts.hostname:
                            continue
                        key = (parts.scheme.lower(), parts.hostname.lower(), parts.path)
                        if key not in urls:
                            urls[key] = {"scheme": parts.scheme.lower(), "host": parts.hostname.lower(), "path": parts.path, "query_redacted": bool(parts.query), "first_file": rel, "first_line": number}
                    except ValueError:
                        pass
            is_app = app_prefix in rel
            for category in local_categories:
                weight = {"update_strong": 10, "update_general": 2, "ad_sdk": 1, "ad_lifecycle": 3, "security_config": 1}[category]
                if category in {"update_strong", "update_general"} and is_app:
                    weight *= 4
                if category in {"ad_sdk", "ad_lifecycle"} and (is_app or ad_app_path.search(rel)):
                    weight *= 4
                file_scores[rel] += weight
                file_categories[rel][category] += 1

    search_stats = {
        "searched_roots": searched_roots,
        "scanned_text_files": dict(scanned_files),
        "total_matches": dict(total_matches),
        "stored_matches": {k: len(v) for k, v in hits.items()},
        "limits": {"per_category": MAX_HITS_PER_CATEGORY, "per_file_category": MAX_HITS_PER_FILE_CATEGORY},
        "truncated_categories": [k for k in hits if total_matches[k] > len(hits[k])],
        "interpretation": "Text-search leads only; confirm control flow and resource relationships before modifying anything.",
    }
    write_json(reports / "search-stats.json", search_stats)
    for category, values in hits.items():
        with (reports / f"hits-{category}.tsv").open("w", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=["file", "line", "text"], delimiter="\t")
            writer.writeheader()
            writer.writerows(values)
    with (reports / "candidate-files.tsv").open("w", encoding="utf-8", newline="") as f:
        writer = csv.writer(f, delimiter="\t")
        writer.writerow(["score", "file", "categories"])
        for path, score in file_scores.most_common():
            writer.writerow([score, path, json.dumps(dict(file_categories[path]))])
    with (reports / "urls.tsv").open("w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["scheme", "host", "path", "query_redacted", "first_file", "first_line"], delimiter="\t")
        writer.writeheader()
        writer.writerows(sorted(urls.values(), key=lambda x: (x["host"], x["path"])))
    write_json(reports / "package-counts.json", package_counts.most_common(500))

    def rank_for(categories):
        return [(p, s) for p, s in file_scores.most_common() if any(file_categories[p][c] for c in categories)]

    update_files = rank_for({"update_strong", "update_general"})
    ad_files = rank_for({"ad_sdk", "ad_lifecycle"})
    security_files = rank_for({"security_config"})

    # Copy a bounded set of high-ranking Java files for close review without
    # requiring download of the complete multi-DEX decompilation.
    copied = []
    copied_bytes = 0
    selected = []
    for p, _ in update_files[:100] + ad_files[:100]:
        if p.endswith(".java") and p.startswith("jadx/sources/") and p not in selected:
            selected.append(p)
    for rel in selected:
        src = work / rel
        if not src.is_file() or src.stat().st_size > 600_000 or copied_bytes + src.stat().st_size > 24_000_000:
            continue
        dst = reports / "candidate-sources" / rel.removeprefix("jadx/sources/")
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_bytes(src.read_bytes())
        copied.append(rel)
        copied_bytes += src.stat().st_size
    write_json(reports / "copied-candidate-sources.json", {"files": copied, "bytes": copied_bytes, "selection": "Highest-ranked update/ad Java files; bounded selection, not exhaustive."})

    def evidence_markdown(title: str, categories: set[str], max_snippets: int = 140):
        ranked = []
        for category in categories:
            for hit in hits[category]:
                score = file_scores[hit["file"]]
                if any(file_categories[hit["file"]][c] for c in categories):
                    ranked.append((score, category, hit))
        ranked.sort(key=lambda x: (-x[0], x[2]["file"], x[2]["line"]))
        out = [f"# {title}", "", "Static search evidence. A hit does not establish runtime execution.", ""]
        seen = set()
        count = 0
        for score, category, hit in ranked:
            key = (hit["file"], hit["line"] // 10)
            if key in seen:
                continue
            seen.add(key)
            path = work / hit["file"]
            lines = read_text(path).splitlines() if path.exists() else []
            start = max(1, hit["line"] - 6)
            end = min(len(lines), hit["line"] + 8)
            out += [f"## {hit['file']}:{hit['line']} ({category}; file score {score})", "", "```java"]
            out += [f"{n:6d}: {lines[n-1][:1000]}" for n in range(start, end + 1)]
            out += ["```", ""]
            count += 1
            if count >= max_snippets:
                break
        out += [f"Snippets shown: {count}. Complete bounded hit indexes are in the corresponding TSV files."]
        (reports / f"evidence-{title.lower().replace(' ', '-')}.md").write_text("\n".join(out), encoding="utf-8")

    evidence_markdown("Update candidates", {"update_strong", "update_general"})
    evidence_markdown("Ad candidates", {"ad_sdk", "ad_lifecycle"})

    # Preserve small textual assets and network configuration for inspection.
    asset_dir = reports / "assets"
    asset_dir.mkdir(exist_ok=True)
    for item in archive.get("assets", []):
        src = decoded / item["path"]
        if src.is_file() and src.suffix.lower() in TEXT_SUFFIXES and src.stat().st_size <= 1_000_000:
            dst = asset_dir / Path(item["path"]).name
            dst.write_bytes(src.read_bytes())
    net_ref = manifest.get("application", {}).get("networkSecurityConfig")
    if isinstance(net_ref, str) and net_ref.startswith("@xml/"):
        for src in (decoded / "res").glob("xml*/" + net_ref.split("/", 1)[1] + ".xml"):
            (reports / ("network-config-" + src.parent.name + ".xml")).write_bytes(src.read_bytes())
    if (decoded / "apktool.yml").exists():
        (reports / "apktool.yml").write_bytes((decoded / "apktool.yml").read_bytes())

    jadx_log = read_text(work / "logs" / "jadx_decompile.log") or ""
    java_error_count = 0
    if (jadx / "sources").exists():
        for path in (jadx / "sources").rglob("*.java"):
            text = read_text(path)
            if text:
                java_error_count += len(re.findall(r"JADX (?:ERROR|WARN)", text))
    coverage = {
        "jadx_exit_code": stage_map.get("jadx_decompile", {}).get("exit_code"),
        "jadx_log_error_lines": len(re.findall(r"\bERROR\b", jadx_log)),
        "jadx_source_error_warning_markers": java_error_count,
        "apktool_exit_code": stage_map.get("apktool_decode", {}).get("exit_code"),
        "decoded_smali_files": len(list(decoded.rglob("*.smali"))) if decoded.exists() else 0,
        "decompiled_java_files": len(list((jadx / "sources").rglob("*.java"))) if (jadx / "sources").exists() else 0,
        "runtime_execution": "NOT TESTED",
        "server_response_behavior": "UNKNOWN; no app-server requests made",
        "native_code_semantics": "PARTIAL; ELF metadata only, no native disassembly",
        "complete_source_recovery": "NOT CLAIMED; decompilation is derived and may be incomplete",
    }
    write_json(reports / "coverage.json", coverage)

    inventory = {
        "scope": "Comprehensive static inventory and targeted ad/update feasibility inspection; no APK edits or execution.",
        "input": input_check, "archive": archive, "manifest": manifest,
        "permissions": permissions, "permission_declarations": permission_declarations,
        "components": components, "application_metadata": metadata,
        "stages": stages, "coverage": coverage,
        "top_update_files": update_files[:80], "top_ad_files": ad_files[:80],
        "top_security_files": security_files[:50],
        "url_host_counts": Counter(u["host"] for u in urls.values()).most_common(),
    }
    write_json(reports / "inventory.json", inventory)

    # Human-readable preliminary report. Interpretation of candidate behavior
    # requires subsequent method-level review; this file does not claim a fix.
    def md(value):
        return str(value if value is not None else "UNKNOWN").replace("|", "\\|").replace("\n", " ")

    lines = [
        "# SnapTube APK — static analysis inventory", "",
        "**Scope:** inspection only. No APK modification, installation, execution, or device mutation.",
        "**Boundary:** comprehensive static inventory does not mean proof of all runtime behavior or complete security.", "",
        "## Input integrity", "",
        f"- Original SHA-256: `{original_hash}`",
        f"- Matches expected input: **{input_check['original_matches_expected']}**",
        f"- Working copy matches original: **{input_check['working_copy_matches_original']}**",
        f"- Size: {input_check['original_size_bytes']} bytes", "",
        "## Package facts", "", "| Property | Value |", "|---|---|",
    ]
    for key in ("package", "resolved_default_label", "version_name", "version_code", "min_sdk", "target_sdk", "compile_sdk_version"):
        lines.append(f"| {key} | {md(manifest.get(key))} |")
    abis = sorted({x["path"].split("/")[1] for x in archive.get("native_libraries", [])})
    lines += [
        f"| DEX files | {len(archive.get('dex', []))} |",
        f"| Native ABIs | {md(', '.join(abis))} |",
        f"| Declared uses-permissions | {len(permissions)} |",
        f"| Manifest components | {len(components)} |", "",
        "## Tool outcomes", "", "| Stage | Exit code |", "|---|---|",
    ]
    for stage in stages:
        lines.append(f"| {md(stage['stage'])} | {md(stage['exit_code'])} |")
    lines += ["", "## Coverage and limits", "", "```json", json.dumps(coverage, indent=2), "```", "", "## Declared permissions", ""]
    lines += [f"- `{md(p['name'])}`" + (f" (maxSdkVersion={p['max_sdk']})" if p.get("max_sdk") else "") for p in permissions]
    lines += ["", "## Highest-ranked update candidates", "", "These are search leads, not confirmed update gates.", ""]
    lines += [f"- `{p}` — score {s}; categories {json.dumps(dict(file_categories[p]))}" for p, s in update_files[:35]]
    lines += ["", "## Highest-ranked advertising candidates", "", "SDK presence alone does not prove an ad is displayed.", ""]
    lines += [f"- `{p}` — score {s}; categories {json.dumps(dict(file_categories[p]))}" for p, s in ad_files[:35]]
    lines += ["", "## Application manifest metadata", "", "```json", json.dumps(metadata, indent=2, ensure_ascii=False), "```", "", "## Next review", "",
        "1. Trace update strings/resources to dialog construction, version comparison, remote-config/API response handling, and startup callers.",
        "2. Trace ad SDK initialization, placement selection, load/show calls, and app-owned mediation wrappers.",
        "3. Cross-check important Java findings against exact Smali methods and resource IDs.",
        "4. Report the smallest change candidates and regression risks; do not edit until the inspection report is delivered.", "",
        "## Explicitly not established", "",
        "- Runtime ad display frequency, update-server responses, or behavior on any Android device.",
        "- That every ad path or update path has been found.",
        "- That a proposed change preserves all download, login, notification, or native-library behavior.",
        "- Any malware/safety verdict or complete security assessment.", ""]
    (reports / "analysis-summary.md").write_text("\n".join(lines), encoding="utf-8")
    print(json.dumps({"input_verified": input_check["original_matches_expected"] and input_check["working_copy_matches_original"], "manifest": manifest, "coverage": coverage, "search_stats": search_stats}, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
