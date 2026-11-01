#!/usr/bin/env python3
"""Build a bounded static-evidence inventory for the uploaded ZArchiver base.apk.

No target code is executed and no network requests are made by this script.
Search hits are leads, not proof of runtime behavior.
"""
from __future__ import annotations

import csv
import hashlib
import json
import math
import re
import shutil
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
    "storage_saf": re.compile(
        r"MANAGE_EXTERNAL_STORAGE|READ_EXTERNAL_STORAGE|WRITE_EXTERNAL_STORAGE|"
        r"DocumentFile|StorageVolume|StorageManager|OpenDocument|CreateDocument|"
        r"takePersistableUriPermission|ContentResolver|FileProvider|getExternalStorage|"
        r"Environment\.|MediaStore|ACTION_OPEN_DOCUMENT_TREE", re.I),
    "root_shizuku": re.compile(
        r"Shizuku|ShizukuProvider|ACCESS_SUPERUSER|superuser|\bsu\b|magisk|"
        r"Runtime\.getRuntime\(\)\.exec|ProcessBuilder|/system/xbin/su|/system/bin/su|"
        r"rikka\.shizuku|UserService|bindUserService", re.I),
    "archive_native": re.compile(
        r"p7z|7z|libp7zip|libunrar|libunegg|libmime|libiconv|libcoreutils|libcontrol|"
        r"libhandler|ZipFile|ZipInputStream|ZipOutputStream|TarArchive|Gzip|BZip2|"
        r"XZ|Zstd|Rar|SevenZ|ArchiveInputStream|ArchiveOutputStream", re.I),
    "plugin_system": re.compile(
        r"PLUGIN|plugin|PluginFileProvider|ru\.zdevs\.zarchiver\.plugin|"
        r"permission\.PLUGIN|USB|CLOUD|loadPackage|createPackageContext", re.I),
    "apk_install": re.compile(
        r"REQUEST_INSTALL_PACKAGES|InstallApk|InstallApks|PackageInstaller|"
        r"ACTION_INSTALL_PACKAGE|application/vnd\.android\.package-archive|"
        r"INSTALL_PACKAGES|DELETE_PACKAGES|session\.openWrite|commit\(", re.I),
    "network": re.compile(
        r"https?://|HttpURLConnection|OkHttp|Retrofit|Volley|Socket\(|ServerSocket|"
        r"URL\(|openConnection|WebView|loadUrl|JavascriptInterface", re.I),
    "ads_billing_license": re.compile(
        r"AdMob|MobileAds|AdView|AdRequest|InterstitialAd|RewardedAd|BillingClient|"
        r"license|donate|premium|purchase|subscription|ca-app-pub|in-app|iap", re.I),
    "update": re.compile(
        r"update|upgrade|versionCode|versionName|latestVersion|market://details|"
        r"play\.google\.com/store/apps/details|checkUpdate|newVersion", re.I),
    "security_config": re.compile(
        r"cleartextTrafficPermitted|networkSecurityConfig|DexClassLoader|PathClassLoader|"
        r"loadLibrary|checkServerTrusted|CertificatePinner|setHostnameVerifier|"
        r"setJavaScriptEnabled|addJavascriptInterface|setAllowFileAccess|"
        r"android:exported|grantUriPermissions|protectionLevel", re.I),
}
MAX_HITS_PER_CATEGORY = 20000
MAX_HITS_PER_FILE_CATEGORY = 250
URL_RE = re.compile(r"https?://[^\s\"'<>\\)\]}]+", re.I)
APP_PREFIX = "ru/zdevs/zarchiver"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1 << 20), b""):
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


def entropy(data: bytes) -> float:
    if not data:
        return 0.0
    counts = Counter(data)
    total = len(data)
    return -sum((c / total) * math.log2(c / total) for c in counts.values())


def copy_tree(src: Path, dst: Path, max_bytes: int) -> dict:
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


def main() -> int:
    if len(sys.argv) != 4:
        print("usage: zarchiver_inventory.py WORK_ROOT ORIGINAL_APK EXPECTED_SHA256", file=sys.stderr)
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
    asset_inventory = []
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
            }
            for item in archive["assets"]:
                data = z.read(item["path"])
                sample = data[:4096]
                printable = sum(1 for b in sample if 32 <= b <= 126 or b in (9, 10, 13)) / max(1, len(sample))
                asset_inventory.append({
                    "path": item["path"],
                    "size": item["size"],
                    "sha256": hashlib.sha256(data).hexdigest(),
                    "entropy_sample": round(entropy(sample), 4),
                    "printable_ratio_sample": round(printable, 4),
                    "first_bytes_hex": data[:32].hex(),
                    "likely_text": printable > 0.85 and entropy(sample) < 6.5,
                })
    write_json(reports / "asset-inventory.json", asset_inventory)

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
                        "grant_uri_permissions": attr(node, "grantUriPermissions"),
                        "target_activity": attr(node, "targetActivity"), "intent_filters": filters,
                    })
    write_json(reports / "manifest.json", {"summary": manifest, "permissions": permissions, "permission_declarations": permission_declarations, "metadata": metadata, "components": components})

    strings = []
    if (decoded / "res").exists():
        for path in sorted((decoded / "res").glob("values*/*.xml")):
            text = read_text(path)
            if text is None:
                continue
            try:
                root = ET.fromstring(text)
            except ET.ParseError:
                continue
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
        "storage_root": [s for s in strings if re.search(r"storage|root|shizuku|permission|sdcard|usb|cloud", s["name"] + " " + s["value"], re.I)],
        "archive": [s for s in strings if re.search(r"archive|extract|compress|zip|rar|7z|tar|password", s["name"] + " " + s["value"], re.I)],
        "install_apk": [s for s in strings if re.search(r"install|apk|package|unknown sources", s["name"] + " " + s["value"], re.I)],
        "ads_license": [s for s in strings if re.search(r"ad|ads|advert|donate|premium|pro|license|purchase|subscription", s["name"] + " " + s["value"], re.I)],
        "update": [s for s in strings if re.search(r"update|upgrade|new version|latest version", s["name"] + " " + s["value"], re.I)],
    }
    write_json(reports / "resource-candidates.json", string_candidates)

    roots = [("jadx", jadx / "sources"), ("apktool", decoded)]
    hits = {k: [] for k in PATTERNS}
    total_matches = Counter()
    stored_per_file = Counter()
    file_scores = Counter()
    file_categories = defaultdict(Counter)
    package_counts = Counter()
    urls = {}
    scanned_files = Counter()
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
            is_app = APP_PREFIX in rel
            for category in local_categories:
                weight = {"storage_saf": 3, "root_shizuku": 5, "archive_native": 2, "plugin_system": 4, "apk_install": 4, "network": 2, "ads_billing_license": 5, "update": 2, "security_config": 3}[category]
                if is_app:
                    weight *= 3
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

    # Copy bounded app-owned Java and Smali for direct review.
    copies = []
    copies.append(copy_tree(jadx / "sources" / "ru" / "zdevs" / "zarchiver", reports / "app-sources" / "jadx" / "ru" / "zdevs" / "zarchiver", 40_000_000))
    for smali_dir in sorted(decoded.glob("smali*")):
        app_dir = smali_dir / "ru" / "zdevs" / "zarchiver"
        if app_dir.exists():
            copies.append(copy_tree(app_dir, reports / "app-sources" / "smali" / smali_dir.name / "ru" / "zdevs" / "zarchiver", 40_000_000))
    write_json(reports / "app-source-copies.json", copies)

    for rel in ["AndroidManifest.xml", "apktool.yml", "res/values/strings.xml", "res/xml/network_security_config.xml"]:
        src = decoded / rel
        if src.is_file():
            dst = reports / "decoded" / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)
    if (decoded / "assets").exists():
        for src in (decoded / "assets").rglob("*"):
            if src.is_file() and src.stat().st_size <= 1_000_000:
                dst = reports / "assets" / src.relative_to(decoded / "assets")
                dst.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(src, dst)

    def rank_for(categories):
        return [(p, s) for p, s in file_scores.most_common() if any(file_categories[p][c] for c in categories)]

    ranked = {
        "storage_root": rank_for({"storage_saf", "root_shizuku"}),
        "archive_plugin": rank_for({"archive_native", "plugin_system"}),
        "apk_install": rank_for({"apk_install"}),
        "network_ads_license": rank_for({"network", "ads_billing_license"}),
        "update_security": rank_for({"update", "security_config"}),
    }

    def evidence_markdown(title: str, categories: set[str], max_snippets: int = 100):
        rows = []
        for category in categories:
            for hit in hits[category]:
                if any(file_categories[hit["file"]][c] for c in categories):
                    rows.append((file_scores[hit["file"]], category, hit))
        rows.sort(key=lambda x: (-x[0], x[2]["file"], x[2]["line"]))
        out = [f"# {title}", "", "Static search evidence. A hit does not establish runtime execution.", ""]
        seen = set()
        count = 0
        for score, category, hit in rows:
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

    evidence_markdown("Storage and root", {"storage_saf", "root_shizuku"})
    evidence_markdown("Archive and plugin", {"archive_native", "plugin_system"})
    evidence_markdown("APK install", {"apk_install"})
    evidence_markdown("Network ads license", {"network", "ads_billing_license"})
    evidence_markdown("Update and security", {"update", "security_config"})

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
        "native_code_semantics": "PARTIAL; ELF metadata, exported symbols, and bounded strings only, no native disassembly",
        "complete_source_recovery": "NOT CLAIMED; decompilation is derived and may be incomplete",
    }
    write_json(reports / "coverage.json", coverage)

    inventory = {
        "scope": "Comprehensive static inventory of uploaded ZArchiver base.apk; no APK edits or execution.",
        "input": input_check, "archive": archive, "manifest": manifest,
        "permissions": permissions, "permission_declarations": permission_declarations,
        "components": components, "application_metadata": metadata,
        "stages": stages, "coverage": coverage,
        "top_ranked": {k: v[:80] for k, v in ranked.items()},
        "url_host_counts": Counter(u["host"] for u in urls.values()).most_common(),
        "asset_inventory": asset_inventory,
    }
    write_json(reports / "inventory.json", inventory)

    def md(value):
        return str(value if value is not None else "UNKNOWN").replace("|", "\\|").replace("\n", " ")

    lines = [
        "# ZArchiver base.apk — static analysis inventory", "",
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
    lines += ["", "## Declared custom permissions", ""]
    lines += [f"- `{md(p['name'])}` protectionLevel={md(p['protectionLevel'])}" for p in permission_declarations]
    for title, key in [
        ("Highest-ranked storage/root candidates", "storage_root"),
        ("Highest-ranked archive/plugin candidates", "archive_plugin"),
        ("Highest-ranked APK-install candidates", "apk_install"),
        ("Highest-ranked network/ads/license candidates", "network_ads_license"),
        ("Highest-ranked update/security candidates", "update_security"),
    ]:
        lines += ["", f"## {title}", ""]
        lines += [f"- `{p}` — score {s}; categories {json.dumps(dict(file_categories[p]))}" for p, s in ranked[key][:35]]
    lines += ["", "## Application manifest metadata", "", "```json", json.dumps(metadata, indent=2, ensure_ascii=False), "```", "", "## Assets", ""]
    for a in asset_inventory[:30]:
        lines += [f"- `{a['path']}` size={a['size']} entropy={a['entropy_sample']} printable={a['printable_ratio_sample']} likely_text={a['likely_text']}"]
    lines += ["", "## Explicitly not established", "",
        "- Runtime behavior on any Android device, including root/Shizuku flows, SAF grants, archive extraction, or APK installation.",
        "- That every native code path has been understood; native libraries were not disassembled.",
        "- Any malware/safety verdict or complete security assessment.",
        "- Ownership or authorization to modify; this report is static analysis only.", ""]
    (reports / "analysis-summary.md").write_text("\n".join(lines), encoding="utf-8")
    print(json.dumps({"input_verified": input_check["original_matches_expected"] and input_check["working_copy_matches_original"], "manifest": manifest, "coverage": coverage, "search_stats": search_stats}, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
