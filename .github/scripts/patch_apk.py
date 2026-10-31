#!/usr/bin/env python3
"""Build a minimally patched SnapTube APK on a GitHub Actions runner.

Reads the read-only original APK, applies exact-method Smali patches, rebuilds,
aligns, signs with a NEW ephemeral key, and verifies the result. The original
APK is never modified. No device/ADB actions are performed.
"""
from __future__ import annotations

import difflib
import hashlib
import json
import os
import re
import secrets
import shutil
import subprocess
import sys
import zipfile
from pathlib import Path

EXPECTED_SHA256 = "34a8689824044252135ebecdfa432f2c07dc1d95ec91623730c36fc72dc3aff3"
EXPECTED_PACKAGE = "com.snaptube.premium"
EXPECTED_VERSION_CODE = "75250210"
EXPECTED_VERSION_NAME = "7.52.0.75250210"

FALSE_BODY = [".locals 1", "", "const/4 v0, 0x0", "", "return v0"]
VOID_BODY = [".locals 0", "", "return-void"]
W25_BODY = [
    ".locals 1",
    "",
    "iget-object v0, p0, Lo/w25;->d:Lo/w25$a;",
    "",
    "iput-object v0, p0, Lo/w25;->b:Lo/ne3;",
    "",
    "return-object v0",
]

PATCHES = [
    {
        "id": "force_update_r_false",
        "class": "com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper",
        "header": ".method public final r(Landroid/content/Context;Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "Primary forced-update gate: never launch ForceUpdateActivity or finish other activities.",
    },
    {
        "id": "force_update_o_false",
        "class": "com/snaptube/premium/selfupgrade/force/AppForceUpdateHelper",
        "header": ".method public final o(Lcom/snaptube/premium/selfupgrade/incremental_upgrade/UpgradeConfig;Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "Backup forced-update predicate: keep o() false even if r() is bypassed.",
    },
    {
        "id": "splash_i1_false",
        "class": "com/snaptube/ads/activity/SplashAdActivity",
        "header": ".method public static i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z",
        "body": FALSE_BODY,
        "reason": "Cold/hot splash interstitial load+show gate returns not-shown.",
    },
    {
        "id": "splash_l1_false",
        "class": "com/snaptube/ads/activity/SplashAdActivity",
        "header": ".method public static l1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z",
        "body": FALSE_BODY,
        "reason": "Cached-ad splash path (hybrid AdHandler.showAd) returns not-shown without launching cached interstitial.",
    },
    {
        "id": "splash_m1_false",
        "class": "com/snaptube/ads/activity/SplashAdActivity",
        "header": ".method public static m1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "CleanActivity splash interstitial gate returns not-shown.",
    },
    {
        "id": "hot_splash_e_false",
        "class": "com/snaptube/premium/ads/splash/HotSplashAdManager",
        "header": ".method public static final e()Z",
        "body": FALSE_BODY,
        "reason": "Hot-launch splash enabled predicate returns false.",
    },
    {
        "id": "hot_splash_g_void",
        "class": "com/snaptube/premium/ads/splash/HotSplashAdManager",
        "header": ".method public static final g()V",
        "body": VOID_BODY,
        "reason": "Hot-launch splash preload/show trigger becomes a no-op.",
    },
    {
        "id": "start_download_z_void",
        "class": "com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel",
        "header": ".method public static final z(Landroid/os/Bundle;Ljava/lang/String;)V",
        "body": VOID_BODY,
        "reason": "Post-download interstitial preload becomes a no-op.",
    },
    {
        "id": "start_download_w_false",
        "class": "com/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel",
        "header": ".method public final w(Landroid/os/Bundle;)Z",
        "body": FALSE_BODY,
        "reason": "Post-download show gate returns false; J() short-circuits before K()/L() and callers do not depend on the boolean.",
    },
    {
        "id": "od_v_false",
        "class": "o/od",
        "header": ".method public static v(Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "Per-placement /<pos>/enabled ad switch returns false for all placements.",
    },
    {
        "id": "od_c_false",
        "class": "o/od",
        "header": ".method public static c(Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "Per-placement /preload_switch/ returns false; disables ad preloading.",
    },
    {
        "id": "w25_h_dummy",
        "class": "o/w25",
        "header": ".method public h()Lo/ne3;",
        "body": W25_BODY,
        "reason": "Native ad engine provider always returns the existing dummy w25$a (a(pos)=false, load/show no-ops). Reward loaders observe no-fill and invoke their NO_FILL callback.",
    },
    {
        "id": "config_P2_false",
        "class": "com/snaptube/premium/configs/Config",
        "header": ".method public static P2()Z",
        "body": FALSE_BODY,
        "reason": "Global enable_ad gate returns false; sole caller o/be.h (IAdsManager.h) disables ads app-wide.",
    },
]


def log(msg: str) -> None:
    print(msg, flush=True)


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def run(cmd: list[str], log_path: Path, *, env: dict | None = None, check: bool = True, cwd: Path | None = None) -> subprocess.CompletedProcess:
    log_path.parent.mkdir(parents=True, exist_ok=True)
    merged = dict(os.environ)
    if env:
        merged.update(env)
    log(f"$ {' '.join(cmd)}")
    proc = subprocess.run(cmd, cwd=cwd, env=merged, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    log_path.write_text(proc.stdout or "")
    if proc.returncode != 0:
        tail = "\n".join((proc.stdout or "").splitlines()[-40:])
        log(f"command failed rc={proc.returncode}; log={log_path}\n{tail}")
        if check:
            raise SystemExit(f"command failed rc={proc.returncode}: {' '.join(cmd)} (see {log_path})")
    return proc


def find_class(decoded: Path, cls: str) -> Path:
    matches = sorted(decoded.glob(f"smali*/{cls}.smali"))
    if len(matches) != 1:
        raise SystemExit(f"expected exactly one smali file for {cls}, found {matches}")
    return matches[0]


def extract_method(text: str, header: str) -> tuple[int, int, list[str]]:
    lines = text.splitlines()
    starts = [i for i, line in enumerate(lines) if line == header]
    if len(starts) != 1:
        raise SystemExit(f"expected exactly one header match, found {len(starts)}: {header}")
    start = starts[0]
    end = None
    for j in range(start + 1, len(lines)):
        if lines[j] == ".end method":
            end = j
            break
    if end is None:
        raise SystemExit(f"unterminated method: {header}")
    return start, end, lines[start : end + 1]


def method_text(header: str, body: list[str]) -> list[str]:
    return [header, "    " + body[0], ""] + ["    " + x if x else "" for x in body[1:]] + [".end method"]


def smali_hashes(decoded: Path) -> dict[str, str]:
    return {str(p.relative_to(decoded)): sha256(p) for p in sorted(decoded.glob("smali*/**/*.smali"))}


def parse_badging(text: str) -> dict:
    out: dict = {"permissions": [], "native_code": []}
    m = re.search(r"^package: name='([^']+)' versionCode='([^']*)' versionName='([^']*)'", text, re.M)
    if m:
        out["package"], out["versionCode"], out["versionName"] = m.groups()
    for key, pat in (("sdkVersion", r"^sdkVersion:'([^']*)'"), ("targetSdkVersion", r"^targetSdkVersion:'([^']*)'")):
        m = re.search(pat, text, re.M)
        out[key] = m.group(1) if m else None
    out["permissions"] = sorted(set(re.findall(r"^uses-permission: name='([^']+)'", text, re.M)))
    m = re.search(r"^native-code: (.+)$", text, re.M)
    if m:
        out["native_code"] = sorted(re.findall(r"'([^']+)'", m.group(1)))
    return out


def verify_roundtrip_method(redecoded: Path, patch: dict) -> dict:
    path = find_class(redecoded, patch["class"])
    text = path.read_text(encoding="utf-8")
    _, _, lines = extract_method(text, patch["header"])
    body = "\n".join(lines)
    header = patch["header"]
    if header.endswith(")V"):
        ok = "return-void" in body and "invoke-" not in body
    elif header.endswith(")Z"):
        ok = "return v0" in body and "const/4 v0, 0x0" in body and "invoke-" not in body
    elif patch["id"] == "w25_h_dummy":
        ok = "Lo/w25;->d:Lo/w25$a;" in body and "Lo/w25;->b:Lo/ne3;" in body and "return-object" in body
    else:
        ok = False
    return {"id": patch["id"], "class": patch["class"], "header": header, "ok": ok, "smali_file": str(path.relative_to(redecoded))}


def main() -> None:
    work = Path(os.environ["WORK_ROOT"]).resolve()
    repo = Path(os.environ.get("GITHUB_WORKSPACE", Path.cwd())).resolve()
    apk = Path(os.environ.get("APK_PATH", repo / "google_drive/SnapTube.apk")).resolve()
    apktool = Path(os.environ["APKTOOL_JAR"]).resolve()
    bt = Path(os.environ["BUILD_TOOLS_BIN"]).resolve()
    out_dir = Path(os.environ.get("OUTPUT_DIR", work / "outputs")).resolve()
    report = Path(os.environ.get("REPORT_DIR", work / "patch-report")).resolve()
    label = os.environ.get("PATCH_LABEL", "adfree-noforce")
    for p in (work, out_dir, report, report / "logs", report / "patches"):
        p.mkdir(parents=True, exist_ok=True)

    # 1. Input integrity.
    original_hash = sha256(apk)
    if original_hash != EXPECTED_SHA256:
        raise SystemExit(f"original APK hash mismatch: {original_hash}")
    with zipfile.ZipFile(apk) as z:
        bad = z.testzip()
        if bad:
            raise SystemExit(f"original APK zip corrupt at {bad}")
        original_members = len(z.namelist())
    log(f"original APK verified: {apk} sha256={original_hash}")

    aapt = bt / "aapt"
    apksigner = bt / "apksigner"
    zipalign = bt / "zipalign"
    orig_badging = run([str(aapt), "dump", "badging", str(apk)], report / "logs/original_badging.log").stdout
    (report / "original-badging.log").write_text(orig_badging)
    orig_meta = parse_badging(orig_badging)
    if orig_meta.get("package") != EXPECTED_PACKAGE or orig_meta.get("versionCode") != EXPECTED_VERSION_CODE:
        raise SystemExit(f"unexpected original package/version: {orig_meta}")

    # 2. Fresh decode.
    decoded = work / "decoded"
    if decoded.exists():
        shutil.rmtree(decoded)
    run(["java", "-Xmx6g", "-jar", str(apktool), "d", "-f", "-o", str(decoded), str(apk)], report / "logs/apktool_decode.log")
    before_hashes = smali_hashes(decoded)

    # 3. Apply exact-method patches.
    patch_records = []
    changed_files = set()
    for patch in PATCHES:
        path = find_class(decoded, patch["class"])
        text = path.read_text(encoding="utf-8")
        start, end, old_lines = extract_method(text, patch["header"])
        new_lines = method_text(patch["header"], patch["body"])
        diff = "\n".join(difflib.unified_diff(old_lines, new_lines, fromfile=f"a/{path.relative_to(decoded)}", tofile=f"b/{path.relative_to(decoded)}", lineterm=""))
        (report / "patches" / f"{patch['id']}.diff").write_text(diff + "\n")
        lines = text.splitlines()
        lines[start : end + 1] = new_lines
        path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        changed_files.add(str(path.relative_to(decoded)))
        patch_records.append({
            "id": patch["id"], "class": patch["class"], "header": patch["header"], "reason": patch["reason"],
            "smali_file": str(path.relative_to(decoded)), "before_method_sha256": hashlib.sha256("\n".join(old_lines).encode()).hexdigest(),
            "after_method_sha256": hashlib.sha256("\n".join(new_lines).encode()).hexdigest(), "diff": f"patches/{patch['id']}.diff",
        })
        log(f"patched {patch['id']}: {patch['class']}")
    after_hashes = smali_hashes(decoded)
    actually_changed = sorted(k for k in before_hashes if before_hashes[k] != after_hashes.get(k))
    if actually_changed != sorted(changed_files):
        raise SystemExit(f"unexpected smali changes: {actually_changed} vs {sorted(changed_files)}")
    (report / "patches.json").write_text(json.dumps(patch_records, indent=2) + "\n")
    (report / "changed-files.json").write_text(json.dumps({"changed_smali_files": actually_changed, "patched_method_count": len(PATCHES)}, indent=2) + "\n")

    # 4. Rebuild.
    unsigned = work / "unsigned.apk"
    run(["java", "-Xmx6g", "-jar", str(apktool), "b", "-f", str(decoded), "-o", str(unsigned)], report / "logs/apktool_build.log")

    # 5. Align (16 KB pages + 4-byte).
    aligned = work / "aligned.apk"
    run([str(zipalign), "-f", "-P", "16", "4", str(unsigned), str(aligned)], report / "logs/zipalign_build.log")
    run([str(zipalign), "-c", "-P", "16", "4", str(aligned)], report / "logs/zipalign_check_aligned.log")

    # 6. Sign with a NEW ephemeral key (never committed).
    ks = work / "signing" / "patch.keystore"
    ks.parent.mkdir(parents=True, exist_ok=True)
    password = secrets.token_urlsafe(24)
    sign_env = {"PATCH_KS_PASSWORD": password}
    dname = os.environ.get("SIGNING_DNAME", "CN=SnapTube Local Patch, OU=Local, O=Local, C=US")
    run(["keytool", "-genkeypair", "-keystore", str(ks), "-alias", "patch", "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000", "-dname", dname, "-storepass", password, "-keypass", password, "-storetype", "PKCS12"], report / "logs/keytool.log", env=sign_env)
    patched = out_dir / f"SnapTube-{EXPECTED_VERSION_NAME}-{label}.apk"
    run([str(apksigner), "sign", "--ks", str(ks), "--ks-key-alias", "patch", "--ks-pass", "env:PATCH_KS_PASSWORD", "--key-pass", "env:PATCH_KS_PASSWORD", "--out", str(patched), str(aligned)], report / "logs/apksigner_sign.log", env=sign_env)
    sig = run([str(apksigner), "verify", "--verbose", "--print-certs", str(patched)], report / "logs/apksigner_verify.log").stdout
    (report / "signature-verify.log").write_text(sig)
    for scheme in ("v1", "v2", "v3"):
        if not re.search(rf"Verified using {scheme} scheme: true", sig):
            raise SystemExit(f"signature scheme {scheme} did not verify")
    run([str(zipalign), "-c", "-P", "16", "4", str(patched)], report / "logs/zipalign_check_patched_16k.log")
    run([str(zipalign), "-c", "4", str(patched)], report / "logs/zipalign_check_patched_4byte.log")

    # 7. Identity / metadata comparison.
    patched_badging = run([str(aapt), "dump", "badging", str(patched)], report / "logs/patched_badging.log").stdout
    (report / "patched-badging.log").write_text(patched_badging)
    patched_meta = parse_badging(patched_badging)
    identity_checks = {}
    for key in ("package", "versionCode", "versionName", "sdkVersion", "targetSdkVersion", "permissions", "native_code"):
        identity_checks[key] = orig_meta.get(key) == patched_meta.get(key)
    if not all(identity_checks.values()):
        raise SystemExit(f"package identity/metadata changed: {identity_checks}\norig={orig_meta}\npatched={patched_meta}")

    # 8. Re-decode patched APK and confirm gate bodies survived the round trip.
    redecoded = work / "redecoded"
    if redecoded.exists():
        shutil.rmtree(redecoded)
    run(["java", "-Xmx6g", "-jar", str(apktool), "d", "-f", "-o", str(redecoded), str(patched)], report / "logs/apktool_redecode.log")
    roundtrip = [verify_roundtrip_method(redecoded, p) for p in PATCHES]
    if not all(r["ok"] for r in roundtrip):
        (report / "roundtrip-checks.json").write_text(json.dumps(roundtrip, indent=2) + "\n")
        raise SystemExit("round-trip patch verification failed")
    (report / "roundtrip-checks.json").write_text(json.dumps(roundtrip, indent=2) + "\n")

    # 9. Final integrity + report.
    if sha256(apk) != EXPECTED_SHA256:
        raise SystemExit("original APK was modified!")
    with zipfile.ZipFile(patched) as z:
        bad = z.testzip()
        if bad:
            raise SystemExit(f"patched APK zip corrupt at {bad}")
        patched_members = len(z.namelist())
    patched_hash = sha256(patched)
    build_report = {
        "status": "PASS",
        "original": {"path": str(apk), "sha256": original_hash, "size_bytes": apk.stat().st_size, "zip_members": original_members, "metadata": orig_meta},
        "patched": {"path": str(patched), "filename": patched.name, "sha256": patched_hash, "size_bytes": patched.stat().st_size, "zip_members": patched_members, "metadata": patched_meta},
        "patched_method_count": len(PATCHES),
        "changed_smali_files": actually_changed,
        "identity_checks": identity_checks,
        "roundtrip_checks_ok": all(r["ok"] for r in roundtrip),
        "signature_schemes": {"v1": True, "v2": True, "v3": True},
        "zipalign": {"four_byte": True, "sixteen_kb_pages": True},
        "signing_note": "Signed with a NEW ephemeral key. Android will refuse to install this over an existing SnapTube install signed with a different key; uninstalling first would erase app data. No device install was performed.",
        "device_testing": "NOT PERFORMED (requires separate approval).",
    }
    (report / "build-report.json").write_text(json.dumps(build_report, indent=2) + "\n")
    log(json.dumps(build_report, indent=2))
    log(f"PATCHED_APK={patched}")
    log(f"PATCHED_SHA256={patched_hash}")


if __name__ == "__main__":
    main()
