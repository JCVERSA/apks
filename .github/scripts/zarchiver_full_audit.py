#!/usr/bin/env python3
"""Extended static security/quality audit for the uploaded ZArchiver APK.

Runner-only. Never executes the APK or its native libraries.
Complements zarchiver_inventory.py with hardening, crypto, IPC and code-quality checks.
"""
from __future__ import annotations

import hashlib
import json
import os
import re
import subprocess
import xml.etree.ElementTree as ET
import zipfile
from collections import Counter
from pathlib import Path

WORK = Path(os.environ["WORK_ROOT"])
REPORT = Path(os.environ["REPORT_DIR"])
APK = Path(os.environ.get("APK_PATH", "base.apk"))
DECODED = WORK / "decoded"
JADX = WORK / "jadx" / "sources"
REPORT.mkdir(parents=True, exist_ok=True)
ANDROID = "{http://schemas.android.com/apk/res/android}"


def sh(cmd):
    try:
        p = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
        return p.returncode, p.stdout, p.stderr
    except Exception as e:  # noqa: BLE001
        return -1, "", str(e)


def dump(name, obj):
    (REPORT / name).write_text(json.dumps(obj, indent=2, ensure_ascii=False) + "\n")


# ---------------------------------------------------------------- 1. archive
zip_facts = {}
if APK.is_file():
    data = APK.read_bytes()
    with zipfile.ZipFile(APK) as z:
        infos = z.infolist()
        names = z.namelist()
        zip_facts = {
            "size_bytes": len(data),
            "sha256": hashlib.sha256(data).hexdigest(),
            "entries": len(names),
            "testzip": z.testzip(),
            "dex_files": [n for n in names if n.endswith(".dex")],
            "abis": sorted({n.split("/")[1] for n in names if n.startswith("lib/") and n.count("/") >= 2}),
            "meta_inf": [n for n in names if n.startswith("META-INF/")][:60],
            "signature_blocks": [n for n in names if re.search(r"META-INF/.*\.(RSA|DSA|EC|SF)$", n)],
            "stored_native_libs": [i.filename for i in infos if i.filename.endswith(".so") and i.compress_type == 0],
            "total_uncompressed": sum(i.file_size for i in infos),
            "total_compressed": sum(i.compress_size for i in infos),
            "duplicate_entries": [n for n, c in Counter(names).items() if c > 1],
            "suspicious_paths": [n for n in names if ".." in n or n.startswith("/")],
            "kotlin_metadata": any(n.startswith("META-INF/") and n.endswith(".kotlin_module") for n in names),
            "proguard_mapping": any("mapping" in n.lower() for n in names),
        }
dump("audit-archive.json", zip_facts)

# ------------------------------------------------------- 2. native hardening
native = []
libs = sorted((DECODED / "lib").rglob("*.so")) if (DECODED / "lib").is_dir() else []
for lib in libs:
    rc, dyn, _ = sh(["readelf", "-d", "-W", str(lib)])
    rc2, prog, _ = sh(["readelf", "-l", "-W", str(lib)])
    rc3, syms, _ = sh(["readelf", "--dyn-syms", "-W", str(lib)])
    rc4, hdr, _ = sh(["readelf", "-h", str(lib)])
    allsyms = syms if rc3 == 0 else ""
    text = lib.read_bytes()
    strings = re.findall(rb"[\x20-\x7e]{6,}", text)
    sjoin = b"\n".join(strings).decode("ascii", "replace")
    entry = {
        "lib": str(lib.relative_to(DECODED)),
        "size": lib.stat().st_size,
        "sha256": hashlib.sha256(text).hexdigest(),
        "elf_type": (re.search(r"Type:\s+(\w+)", hdr).group(1) if rc4 == 0 and re.search(r"Type:\s+(\w+)", hdr) else None),
        "nx_gnu_stack": None,
        "relro": "none",
        "bind_now": bool(re.search(r"BIND_NOW|FLAGS.*NOW", dyn)),
        "stack_canary": "__stack_chk_fail" in allsyms,
        "fortify_calls": sorted(set(re.findall(r"\b(__\w+_chk)\b", allsyms)))[:20],
        "textrel": bool(re.search(r"\bTEXTREL\b", dyn)),
        "rpath": re.findall(r"\((?:RPATH|RUNPATH)\).*?\[(.*?)\]", dyn),
        "needed": re.findall(r"\(NEEDED\).*?\[(.*?)\]", dyn),
        "exported_symbol_count": len([l for l in allsyms.splitlines() if " GLOBAL " in l and " UND " not in l]),
        "jni_exports": sorted(set(re.findall(r"\bJava_[A-Za-z0-9_]+", allsyms)))[:40],
        "risky_apis": sorted(set(re.findall(r"\b(strcpy|strcat|sprintf|vsprintf|gets|system|popen|execve|execl|execvp|memcpy|alloca)\b", allsyms))),
        "network_strings": sorted(set(re.findall(r"https?://[^\s\"'<>]{4,120}", sjoin)))[:25],
        "shell_strings": sorted({s for s in re.findall(r"[^\n]{0,60}(?:/system/bin/sh|/system/xbin/su|\bsu -c\b|chmod |chown |rm -rf)[^\n]{0,60}", sjoin)})[:25],
        "build_id": (re.search(r"Build ID: ([0-9a-f]+)", dyn).group(1) if re.search(r"Build ID: ([0-9a-f]+)", dyn) else None),
    }
    if rc2 == 0:
        m = re.search(r"GNU_STACK[^\n]*", prog)
        if m:
            entry["nx_gnu_stack"] = "E" not in m.group(0).split()[-1] if m.group(0).split() else None
            entry["gnu_stack_line"] = m.group(0).strip()
        entry["relro"] = "full" if ("GNU_RELRO" in prog and entry["bind_now"]) else ("partial" if "GNU_RELRO" in prog else "none")
    native.append(entry)
dump("audit-native-hardening.json", native)

# ------------------------------------------------------------- 3. manifest
manifest_facts = {}
mp = DECODED / "AndroidManifest.xml"
if mp.is_file():
    root = ET.parse(mp).getroot()
    app = root.find("application")
    def attrs(el):
        return {k.replace(ANDROID, ""): v for k, v in el.attrib.items()}
    comps = []
    for kind in ("activity", "activity-alias", "service", "receiver", "provider"):
        for el in app.findall(kind) if app is not None else []:
            a = attrs(el)
            filters = [
                {"actions": [x.get(ANDROID + "name") for x in f.findall("action")],
                 "categories": [x.get(ANDROID + "name") for x in f.findall("category")],
                 "data": [attrs(x) for x in f.findall("data")]}
                for f in el.findall("intent-filter")
            ]
            exported = a.get("exported")
            implicit_export = exported is None and bool(filters)
            comps.append({
                "kind": kind, "name": a.get("name"), "exported": exported,
                "implicitly_exported": implicit_export,
                "permission": a.get("permission"), "readPermission": a.get("readPermission"),
                "writePermission": a.get("writePermission"), "process": a.get("process"),
                "grantUriPermissions": a.get("grantUriPermissions"), "authorities": a.get("authorities"),
                "path_permissions": [attrs(x) for x in el.findall("path-permission")],
                "intent_filters": filters,
                "risk_flags": [
                    flag for flag, cond in [
                        ("exported-no-permission", (exported == "true" or implicit_export) and not a.get("permission")),
                        ("browsable", any("android.intent.category.BROWSABLE" in (f["categories"] or []) for f in filters)),
                        ("wildcard-mime", any(any(d.get("mimeType") == "*/*" for d in f["data"]) for f in filters)),
                        ("file-scheme", any(any(d.get("scheme") == "file" for d in f["data"]) for f in filters)),
                        ("grant-uri", a.get("grantUriPermissions") == "true"),
                        ("max-priority", any(f.get("priority") == "2147483647" for f in el.findall("intent-filter"))),
                    ] if cond
                ],
            })
    manifest_facts = {
        "package": root.get("package"),
        "application": attrs(app) if app is not None else {},
        "permissions": [attrs(p) for p in root.findall("uses-permission")] + [attrs(p) for p in root.findall("uses-permission-sdk-23")],
        "declared_permissions": [attrs(p) for p in root.findall("permission")],
        "components": comps,
        "queries": [attrs(i) for i in root.findall("queries/intent")],
        "backup_config_present": (app is not None and (app.get(ANDROID + "fullBackupContent") or app.get(ANDROID + "dataExtractionRules"))),
        "debuggable": app.get(ANDROID + "debuggable") if app is not None else None,
        "usesCleartextTraffic": app.get(ANDROID + "usesCleartextTraffic") if app is not None else None,
        "networkSecurityConfig": app.get(ANDROID + "networkSecurityConfig") if app is not None else None,
    }
dump("audit-manifest.json", manifest_facts)

# ------------------------------------------------- 4. code pattern checks
PATTERNS = {
    "pending_intent_mutability": r"PendingIntent\.get\w+\([^;]*",
    "command_exec": r"ProcessBuilder|Runtime\.getRuntime\(\)\.exec|\.command\(",
    "shell_string_concat": r"\"(?:cat|cp|mv|rm|mkdir|chmod|chown|ln|touch|restorecon|ls|stat|dd|tar) ['\"]?\s*\"\s*\+",
    "path_traversal_guard": r"getCanonicalPath|normalize\(\)|\\.\\./|startsWith\(.*getRoot|ZipSlip",
    "world_accessible": r"MODE_WORLD_READABLE|MODE_WORLD_WRITEABLE|setReadable\(true, false\)|setWritable\(true, false\)|chmod 777|0777",
    "weak_crypto": r"getInstance\(\"(?:DES|RC4|MD5|SHA-1|AES/ECB|RSA/ECB/PKCS1Padding|AES)\"|MessageDigest\.getInstance\(\"(?:MD5|SHA-1)\"",
    "deterministic_iv": r"setRandomizedEncryptionRequired\(false\)|GCMParameterSpec|IvParameterSpec",
    "keystore": r"AndroidKeyStore|KeyGenParameterSpec|KeyPairGeneratorSpec|setUserAuthenticationRequired",
    "insecure_random": r"new Random\(|Math\.random\(",
    "cleartext_url": r"\"http://[^\"]+\"",
    "logging": r"Log\.[dviwe]\(|printStackTrace\(",
    "reflection_hidden_api": r"Class\.forName|getDeclaredMethod|getDeclaredField|setAccessible\(true\)",
    "strictmode_bypass": r"disableDeathOnFileUriExposure|StrictMode",
    "webview": r"WebView|setJavaScriptEnabled|addJavascriptInterface",
    "sql": r"SQLiteDatabase|rawQuery|execSQL|openOrCreateDatabase",
    "clipboard": r"ClipboardManager|ClipData\.newPlainText",
    "external_ipc": r"acquireUnstableContentProviderClient|acquireContentProviderClient|sendBroadcast|registerReceiver",
    "temp_files": r"createTempFile|getCacheDir|getExternalCacheDir|deleteOnExit",
    "password_handling": r"(?i)password|passwd|pwd",
    "hardcoded_secret": r"(?i)(api[_-]?key|secret|token|passwd|password)\s*=\s*\"[^\"]{6,}\"",
    "todo_fixme": r"TODO|FIXME|XXX|HACK",
    "empty_catch": r"catch \((?:Exception|Throwable) unused\d*\) \{\s*\}",
    "deprecated_api": r"getExternalStorageDirectory|AsyncTask|PreferenceActivity|PreferenceFragment\b|onBackPressed",
}
compiled = {k: re.compile(v) for k, v in PATTERNS.items()}
hits = {k: [] for k in PATTERNS}
counts = Counter()
java_files = sorted(JADX.rglob("*.java")) if JADX.is_dir() else []
for jf in java_files:
    try:
        text = jf.read_text(errors="replace")
    except OSError:
        continue
    lines = text.splitlines()
    for cat, rx in compiled.items():
        matched = []
        for i, line in enumerate(lines, 1):
            if rx.search(line):
                matched.append({"line": i, "text": line.strip()[:240]})
        if matched:
            counts[cat] += len(matched)
            hits[cat].append({"file": str(jf.relative_to(JADX)), "count": len(matched), "sample": matched[:10]})
for cat in hits:
    hits[cat].sort(key=lambda x: -x["count"])
    hits[cat] = hits[cat][:60]
dump("audit-code-hits.json", hits)
dump("audit-code-counts.json", dict(counts))

# ------------------------------------------------ 5. pending intent flags
# Decode the final flags argument as a bit mask. A decimal substring test is
# unsafe: 167772160 (UPDATE_CURRENT|MUTABLE) contains the decimal digits of
# FLAG_IMMUTABLE but does not contain the FLAG_IMMUTABLE bit.
PI_FLAG_NAMES = {
    0x02000000: "MUTABLE", 0x04000000: "IMMUTABLE",
    0x08000000: "UPDATE_CURRENT", 0x10000000: "CANCEL_CURRENT",
    0x40000000: "ONE_SHOT", 0x20000000: "NO_CREATE",
}


def decode_pi_flags(snippet: str):
    # The call may be followed by .getIntentSender(), .build(), or extra closing
    # parentheses. Take the last numeric argument that directly precedes a
    # closing paren, not the text after the final comma of the whole snippet.
    numeric = re.findall(r",\s*(0x[0-9a-fA-F]+|\d+)\s*\)+", snippet)
    value = None
    if numeric:
        tail = numeric[-1]
        value = int(tail, 16 if tail.startswith("0x") else 10)
    if value is not None:
        names = [name for bit, name in PI_FLAG_NAMES.items() if value & bit]
        return value, names, bool(value & 0x04000000), bool(value & 0x02000000)
    names = re.findall(r"FLAG_(IMMUTABLE|MUTABLE|UPDATE_CURRENT|CANCEL_CURRENT|ONE_SHOT|NO_CREATE)", snippet)
    return None, names, "IMMUTABLE" in names, "MUTABLE" in names


pi_rows = []
for jf in java_files:
    try:
        text = jf.read_text(errors="replace")
    except OSError:
        continue
    for m in re.finditer(r"PendingIntent\.get(Activity|Service|Broadcast|ForegroundService)\((?:[^;]{0,400})\)", text, re.S):
        snippet = m.group(0)
        line = text[:m.start()].count("\n") + 1
        value, names, immutable, mutable = decode_pi_flags(snippet)
        pi_rows.append({
            "file": str(jf.relative_to(JADX)), "line": line,
            "kind": m.group(1), "flags_int": value, "flags": names,
            "immutable_flag_detected": immutable,
            "mutable_flag_detected": mutable,
            "mutability_explicit": immutable or mutable,
            "snippet": " ".join(snippet.split())[:300],
        })
dump("audit-pending-intents.json", pi_rows)

# ------------------------------------------- 6. third-party / obfuscation
pkg_counts = Counter()
for jf in java_files:
    relp = str(jf.relative_to(JADX))
    parts = relp.split("/")
    pkg_counts["/".join(parts[:-1]) or "(root)"] += 1
third_party_prefixes = ("com/", "org/", "android/support/", "androidx/", "rikka/", "moe/", "kotlin/")
third_party = {p: c for p, c in pkg_counts.items() if p.startswith(third_party_prefixes)}
obfuscated = {p: c for p, c in pkg_counts.items() if re.fullmatch(r"[a-z]\d?(/[a-z]\d?)*", p)}
dump("audit-packages.json", {
    "java_files": len(java_files),
    "packages": dict(pkg_counts.most_common()),
    "third_party_like": third_party,
    "obfuscated_like_package_count": len(obfuscated),
    "obfuscated_like_file_count": sum(obfuscated.values()),
})

# ------------------------------------------------------- 7. string secrets
secret_rx = re.compile(r"(?i)(?:api[_-]?key|apikey|secret|client[_-]?secret|access[_-]?token|private[_-]?key|bearer\s)[\"'\s:=]{1,4}[A-Za-z0-9_\-]{12,}")
sp = DECODED / "res" / "values" / "strings.xml"
secrets = []
if sp.is_file():
    for i, line in enumerate(sp.read_text(errors="replace").splitlines(), 1):
        if secret_rx.search(line):
            secrets.append({"file": "res/values/strings.xml", "line": i, "text": line.strip()[:200]})
for jf in java_files:
    try:
        text = jf.read_text(errors="replace")
    except OSError:
        continue
    for i, line in enumerate(text.splitlines(), 1):
        if secret_rx.search(line) and "R.string" not in line:
            secrets.append({"file": str(jf.relative_to(JADX)), "line": i, "text": line.strip()[:200]})
dump("audit-secrets.json", {"candidates": secrets[:200], "count": len(secrets),
                            "note": "Heuristic only; manual review required."})

summary = {
    "apk": zip_facts,
    "native_lib_count": len(native),
    "native_relro_full": sum(1 for n in native if n["relro"] == "full"),
    "native_stack_canary": sum(1 for n in native if n["stack_canary"]),
    "native_textrel": [n["lib"] for n in native if n["textrel"]],
    "components": len(manifest_facts.get("components", [])),
    "exported_components": [c["name"] for c in manifest_facts.get("components", [])
                            if c["exported"] == "true" or c["implicitly_exported"]],
    "code_pattern_counts": dict(counts),
    "pending_intents_total": len(pi_rows),
    "pending_intents_immutable": sum(1 for p in pi_rows if p["immutable_flag_detected"]),
    "pending_intents_mutable": sum(1 for p in pi_rows if p["mutable_flag_detected"]),
    "pending_intents_without_explicit_mutability": sum(1 for p in pi_rows if not p["mutability_explicit"]),
    "secret_candidates": len(secrets),
    "java_files": len(java_files),
    "runtime_execution": "NOT TESTED",
    "exploit_validation": "NOT PERFORMED",
}
dump("audit-summary.json", summary)
print(json.dumps(summary, indent=2, ensure_ascii=False))
