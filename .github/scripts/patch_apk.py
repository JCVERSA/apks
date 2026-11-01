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

# Revision 5: keep the server-delivered extractor plugin functional, but resolve
# the whole official-warning / signature-hash package from the patched host app.
# Also make the host signature-hash helper return the embedded official cert hash,
# dismiss any residual warning dialog, and block the infomobi ad plugin.
JZ5_WARNING_HOST_BODY = [
    ".locals 2",
    "",
    'const-string v0, "com.snaptube.extractor.pluginlib.piratical."',
    "invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z",
    "move-result v0",
    "if-nez v0, :warning_host",
    "",
    'const-string v0, "o.xl"',
    "invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z",
    "move-result v0",
    "if-nez v0, :warning_host",
    "",
    'const-string v0, "o.xi7"',
    "invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z",
    "move-result v0",
    "if-nez v0, :warning_host",
    "",
    'const-string v0, "com.snaptube.premium.dialog.PiraticalApkWarningDialogFragment"',
    "invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z",
    "move-result v0",
    "if-eqz v0, :plugin_first",
    "",
    ":warning_host",
    "iget-object v0, p0, Lo/jz5;->b:Ljava/lang/ClassLoader;",
    "",
    ":try_start_host",
    "invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;",
    "move-result-object p1",
    ":try_end_host",
    ".catch Ljava/lang/ClassNotFoundException; {:try_start_host .. :try_end_host} :plugin_first",
    "return-object p1",
    "",
    ":plugin_first",
    ":try_start_0",
    "invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;",
    "move-result-object p1",
    ":try_end_0",
    ".catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0",
    "return-object p1",
    "",
    ":catch_0",
    "iget-object v0, p0, Lo/jz5;->b:Ljava/lang/ClassLoader;",
    "invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;",
    "move-result-object p1",
    "return-object p1",
]
LZ5_WARNING_HOST_BODY = [line.replace("Lo/jz5;->b:", "Lo/lz5;->a:") for line in JZ5_WARNING_HOST_BODY]

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
    {
        "id": "extractor_official_warning_gate_false",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog",
        "header": ".method public static final h(Landroid/content/Context;)Z",
        "body": FALSE_BODY,
        "reason": "At the video-extraction boundary, explicitly skip the official-app warning/forbidden-result branch and continue normal extraction. The input already had an unreachable-code bypass in the nested helper; this makes the boundary suppression explicit without changing certificate reporting.",
    },
    {
        "id": "extractor_official_warning_show_void",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a",
        "header": ".method public static final d(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V",
        "body": VOID_BODY,
        "reason": "Suppress the known show() path for the 'Please Install the Official Snaptube' dialog. This helper only constructs/displays that warning and records its shown state.",
    },
    {
        "id": "upgrade_official_warning_branch_skip",
        "class": "com/snaptube/premium/selfupgrade/BaseUpgradeActivity",
        "header": ".method public onCreate(Landroid/os/Bundle;)V",
        "replacements": [
            {"old": "    if-eqz p1, :cond_3", "new": "    goto :cond_3", "count": 1}
        ],
        "required_tokens": ["goto :cond_3", ":cond_3", "->K1()V"],
        "reason": "Skip the PiraticalApkWarningDialogFragment branch in the upgrade screen; preserve the rest of onCreate, including K1(). Complemented by the global xi7 gate below.",
    },
    {
        "id": "official_signature_gate_false",
        "class": "o/xi7",
        "header": ".method public static c(Landroid/content/Context;Z)Z",
        "body": FALSE_BODY,
        "reason": "Global 'is not an official version' predicate returns false. This is the shared gate behind PiraticalApkWarningDialogFragment (upgrade/force-update/About) and crack telemetry, so the official-app upgrade screen cannot be triggered by certificate mismatch on any path.",
    },

    {
        "id": "official_signature_hash_return_embedded_cert",
        "class": "o/xl",
        "header": ".method public static c(Landroid/content/Context;)Ljava/lang/String;",
        "body": [
            ".locals 1",
            "",
            'const-string v0, "be135353437d704f3a37e2b413d040a5ddff4f19"',
            "return-object v0",
        ],
        "reason": "Return the embedded official wandoujia certificate SHA-1 so host/plugin signature comparisons no longer classify this authorized local copy as unofficial.",
    },
    {
        "id": "plugin_context_check_official_warning_void",
        "class": "com/snaptube/extractor/pluginlib/utils/PluginContextUtil",
        "header": ".method private static checkOfficialWarning()V",
        "body": VOID_BODY,
        "reason": "Do not schedule the host-side official-warning/guide-image task when the plugin context is initialized.",
    },
    {
        "id": "plugin_context_warning_runnable_void",
        "class": "com/snaptube/extractor/pluginlib/utils/PluginContextUtil$a",
        "header": ".method public a()V",
        "body": VOID_BODY,
        "reason": "Neutralize the scheduled official-warning runnable itself, including guide-image prefetch.",
    },
    {
        "id": "extractor_warning_helper_x_false",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog",
        "header": ".method public static final x(Landroid/content/Context;)Z",
        "body": FALSE_BODY,
        "reason": "Directly disable the public official-warning check used by PluginContextUtil, not only its nested helper.",
    },
    {
        "id": "official_warning_dialog_onstart_dismiss",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog",
        "header": ".method public onStart()V",
        "body": [
            ".locals 0",
            "",
            "invoke-super {p0}, Landroid/app/Dialog;->onStart()V",
            "invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V",
            "return-void",
        ],
        "reason": "If any code path still constructs and shows the host warning dialog, dismiss it immediately instead of blocking extraction.",
    },
    {
        "id": "ad_infomobi_plugin_load_false",
        "class": "com/snaptube/plugin/PluginId$5",
        "header": ".method public load(Ljava/lang/String;)Z",
        "body": FALSE_BODY,
        "reason": "Do not initialize the downloaded infomobi advertising plugin.",
    },
    {
        "id": "ad_infomobi_plugin_download_false",
        "class": "com/snaptube/plugin/PluginId$5",
        "header": ".method public shouldDownload()Z",
        "body": FALSE_BODY,
        "reason": "Do not download the infomobi advertising plugin.",
    },
    {
        "id": "site_extractor_classloader_warning_host_jz5",
        "class": "o/jz5",
        "header": ".method public findClass(Ljava/lang/String;)Ljava/lang/Class;",
        "body": JZ5_WARNING_HOST_BODY,
        "required_tokens": ["invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;", ".catch Ljava/lang/ClassNotFoundException;"],
        "reason": "Restore the SITE_EXTRACTOR hot-swap plugin (needed for working downloads), but resolve only official-warning/signature-gate classes from the patched host classloader. All extractor/transfer classes still load child-first from the server plugin, so revision 3's download regression is avoided while the plugin cannot re-deliver the official-app popup.",
    },
    {
        "id": "site_extractor_classloader_warning_host_lz5",
        "class": "o/lz5",
        "header": ".method public findClass(Ljava/lang/String;)Ljava/lang/Class;",
        "body": LZ5_WARNING_HOST_BODY,
        "required_tokens": ["invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;", ".catch Ljava/lang/ClassNotFoundException;"],
        "reason": "Same targeted host-first warning-class resolution for the second plugin DexClassLoader wrapper, preserving normal plugin-first extraction/transfer behavior.",
    },
    {
        "id": "extractor_warning_helper_c_false",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a",
        "header": ".method public final c(Landroid/content/Context;)Z",
        "body": FALSE_BODY,
        "reason": "Disable the extractor official-warning decision helper directly, independent of the h() boundary and of the signature oracle, so no caller can schedule the 'Please Install the Official' dialog.",
    },
    {
        "id": "extractor_warning_helper_i_false",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a",
        "header": ".method public final i(Landroid/content/Context;)Z",
        "body": FALSE_BODY,
        "reason": "Force the nested 'should warn' predicate false so the extractor warning helper cannot be re-enabled by certificate/state checks.",
    },
    {
        "id": "extractor_warning_helper_j_false",
        "class": "com/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a",
        "header": ".method public final j(Landroid/content/Context;)Z",
        "body": FALSE_BODY,
        "reason": "Force the certificate-comparison warning predicate false (it compares the APK signer SHA-1 to the official wandoujia cert), removing the last input that could raise the extractor official-app warning.",
    },
    {
        "id": "crack_exit_toast_void",
        "class": "com/snaptube/premium/activity/ExploreActivity",
        "header": ".method public final m1(Landroid/content/Context;Z)V",
        "body": VOID_BODY,
        "reason": "Neutralize the EXIT_FOR_CRACK handler: it only shows the update_for_crack/debug_not_allowed toast and schedules a delayed process exit. Making it a no-op prevents the crack/official exit path from interrupting downloads.",
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


def render_patched_method(patch: dict, old_lines: list[str]) -> list[str]:
    if "replacements" not in patch:
        return method_text(patch["header"], patch["body"])
    new_lines = list(old_lines)
    for replacement in patch["replacements"]:
        old, new, expected = replacement["old"], replacement["new"], replacement["count"]
        actual = new_lines.count(old)
        if actual != expected:
            raise SystemExit(f"{patch['id']}: expected {expected} exact source lines, found {actual}: {old!r}")
        new_lines = [new if line == old else line for line in new_lines]
    return new_lines


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
    if patch["id"] == "upgrade_official_warning_branch_skip":
        # Baksmali may renumber local labels. Verify the control-flow relationship,
        # not the original label spelling: signature call -> goto -> K1(), with
        # the warning construction left in the skipped linear block.
        compact = [line.strip() for line in lines if line.strip()]
        ok = False
        for i, line in enumerate(compact[:-2]):
            if re.fullmatch(r"invoke-static \{[^}]+\}, Lo/xi7;->c\(Landroid/content/Context;Z\)Z", line):
                move, branch = compact[i + 1], compact[i + 2]
                mm = re.fullmatch(r"move-result (\w+)", move)
                gm = re.fullmatch(r"goto (:\S+)", branch)
                if mm and gm:
                    label = gm.group(1)
                    if label in compact:
                        j = compact.index(label)
                        ok = j + 1 < len(compact) and "->K1()V" in compact[j + 1]
                break
        ok = ok and "new-instance" in body and "PiraticalApkWarningDialogFragment;-><init>()V" in body
    elif patch["id"] == "w25_h_dummy":
        ok = "Lo/w25;->d:Lo/w25$a;" in body and "Lo/w25;->b:Lo/ne3;" in body and "return-object" in body
    elif patch["id"] in {"site_extractor_classloader_warning_host_jz5", "site_extractor_classloader_warning_host_lz5"}:
        field = "Lo/jz5;->b:Ljava/lang/ClassLoader;" if patch["class"] == "o/jz5" else "Lo/lz5;->a:Ljava/lang/ClassLoader;"
        ok = all(token in body for token in (
            'const-string v0, "com.snaptube.extractor.pluginlib.piratical."',
            "Ljava/lang/String;->startsWith(Ljava/lang/String;)Z",
            'const-string v0, "o.xl"',
            'const-string v0, "o.xi7"',
            "Ljava/lang/String;->equals(Ljava/lang/Object;)Z",
            'const-string v0, "com.snaptube.premium.dialog.PiraticalApkWarningDialogFragment"',
            field,
            "Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;",
            "invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;",
            ".catch Ljava/lang/ClassNotFoundException;",
            "return-object p1",
        ))
    elif patch["id"] == "official_signature_hash_return_embedded_cert":
        ok = 'const-string v0, "be135353437d704f3a37e2b413d040a5ddff4f19"' in body and "return-object v0" in body
    elif patch["id"] == "official_warning_dialog_onstart_dismiss":
        ok = "invoke-super {p0}, Landroid/app/Dialog;->onStart()V" in body and "invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V" in body and "return-void" in body
    elif header.endswith(")V"):
        ok = "return-void" in body and "invoke-" not in body
    elif header.endswith(")Z"):
        ok = "return v0" in body and "const/4 v0, 0x0" in body and "invoke-" not in body
    else:
        ok = False
    result = {"id": patch["id"], "class": patch["class"], "header": header, "ok": ok, "smali_file": str(path.relative_to(redecoded))}
    if "replacements" in patch:
        result["control_flow_evidence"] = [line.strip() for line in lines if any(token in line for token in ("xi7;->c(", "goto ", ":cond", "->K1()", "PiraticalApkWarningDialogFragment;-><init>"))]
    return result


def main() -> None:
    work = Path(os.environ["WORK_ROOT"]).resolve()
    repo = Path(os.environ.get("GITHUB_WORKSPACE", Path.cwd())).resolve()
    apk = Path(os.environ.get("APK_PATH", repo / "google_drive/SnapTube.apk")).resolve()
    apktool = Path(os.environ["APKTOOL_JAR"]).resolve()
    bt = Path(os.environ["BUILD_TOOLS_BIN"]).resolve()
    out_dir = Path(os.environ.get("OUTPUT_DIR", work / "outputs")).resolve()
    report = Path(os.environ.get("REPORT_DIR", work / "patch-report")).resolve()
    label = os.environ.get("PATCH_LABEL", "adfree-noforce-official-removed")
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

    # 3. Preflight every exact target before writing any patch.
    prepared = []
    for patch in PATCHES:
        path = find_class(decoded, patch["class"])
        text = path.read_text(encoding="utf-8")
        start, end, old_lines = extract_method(text, patch["header"])
        new_lines = render_patched_method(patch, old_lines)
        if new_lines == old_lines:
            raise SystemExit(f"patch would not change its target: {patch['id']}")
        prepared.append((patch, path, old_lines, new_lines))

    patch_records = []
    changed_files = set()
    for patch, path, old_lines, new_lines in prepared:
        diff = "\n".join(difflib.unified_diff(old_lines, new_lines, fromfile=f"a/{path.relative_to(decoded)}", tofile=f"b/{path.relative_to(decoded)}", lineterm=""))
        (report / "patches" / f"{patch['id']}.diff").write_text(diff + "\n")
        # Re-read for every patch so multiple methods in one class are preserved.
        current_text = path.read_text(encoding="utf-8")
        start, end, current_lines = extract_method(current_text, patch["header"])
        if current_lines != old_lines:
            raise SystemExit(f"target method changed during preflight/apply: {patch['id']}")
        lines = current_text.splitlines()
        lines[start : end + 1] = new_lines
        path.write_text("\n".join(lines) + "\n", encoding="utf-8")
        changed_files.add(str(path.relative_to(decoded)))
        patch_records.append({
            "id": patch["id"], "class": patch["class"], "header": patch["header"], "reason": patch["reason"],
            "patch_type": "exact_line_replacement" if "replacements" in patch else "method_body",
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
        if not re.search(rf"Verified using {scheme} scheme[^:]*: true", sig):
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
        "revision": 5,
        "scope": ["disable app ad gates", "block forced update", "remove official-app warning at video extraction and upgrade/crack paths", "restore server-delivered SITE_EXTRACTOR plugin updates while resolving warning/signature-hash classes from the patched host", "block infomobi ad plugin download/load"],
        "official_warning_note": "Revision 3 disabled SITE_EXTRACTOR download+load and caused a download regression. Revision 4 restored the plugin and host-resolved only OfficialWarningDialog/xi7/PiraticalApkWarningDialogFragment, but isolated emulator A/B still showed the official-app screen. Revision 5 keeps SITE_EXTRACTOR download/load enabled, broadens host-first resolution to the whole com.snaptube.extractor.pluginlib.piratical package plus o.xl/o.xi7, makes o.xl.c return the embedded official wandoujia certificate SHA-1, disables PluginContextUtil official-warning scheduling, forces OfficialWarningDialog.x false, dismisses any residual host warning dialog in onStart, and blocks the infomobi ad plugin. Extractor/transfer classes still load child-first from the server plugin. The embedded google/origin.apk signature oracle is byte-for-byte intact. Build/static verification only; runtime emulator verification is tracked separately.",
        "changed_smali_files": actually_changed,
        "identity_checks": identity_checks,
        "roundtrip_checks_ok": all(r["ok"] for r in roundtrip),
        "signature_schemes": {"v1": True, "v2": True, "v3": True},
        "zipalign": {"four_byte": True, "sixteen_kb_pages": True},
        "signing_note": "Signed with a NEW ephemeral key. Android will refuse to install this over an existing SnapTube install signed with a different key; uninstalling first would erase app data. No device install was performed.",
        "device_testing": "Separate isolated GitHub Actions emulator A/B runs are tracked under analysis/remote/emulator-ab-*; this build performs no device actions.",
    }
    (report / "build-report.json").write_text(json.dumps(build_report, indent=2) + "\n")
    log(json.dumps(build_report, indent=2))
    log(f"PATCHED_APK={patched}")
    log(f"PATCHED_SHA256={patched_hash}")


if __name__ == "__main__":
    main()
