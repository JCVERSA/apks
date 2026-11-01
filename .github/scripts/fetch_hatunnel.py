#!/usr/bin/env python3
"""Fetch HA Tunnel Plus 1.7.1 APK from Uptodown (preferred) or APKPure fallback.

Stdlib-only. Verifies the published SHA-256 before accepting the file.
"""
from __future__ import annotations

import argparse
import hashlib
import html
import json
import re
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path

VERSION = "1.7.1"
PACKAGE = "com.hatunnel.plus"
EXPECTED_SHA256 = "741e283ba3ee4b04b6988d5842d38491a51fa0bddfaf52d9c6bca9e6245ad051"
EXPECTED_SIZE_MB = 23.86
UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
UPTODOWN_PAGE = "https://ha-tunnel-plus.en.uptodown.com/android/download"
APKPURE_PAGE = "https://apkpure.com/ha-tunnel-plus/com.hatunnel.plus/download"


def log(msg: str) -> None:
    print(msg, flush=True)


def curl(url: str, *, out: Path | None = None, referer: str | None = None, timeout: int = 300) -> subprocess.CompletedProcess:
    cmd = [
        "curl", "--silent", "--show-error", "--location", "--fail",
        "--retry", "3", "--retry-delay", "2", "--max-time", str(timeout),
        "--user-agent", UA,
        "--header", "Accept-Language: en-US,en;q=0.9",
    ]
    if referer:
        cmd += ["--referer", referer]
    if out is not None:
        cmd += ["--output", str(out)]
    cmd.append(url)
    log(f"$ curl {' '.join(cmd[:-1])} <url>")
    return subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def looks_like_apk(path: Path) -> bool:
    if not path.exists() or path.stat().st_size < 1_000_000:
        return False
    try:
        with zipfile.ZipFile(path) as z:
            names = set(z.namelist())
            return "AndroidManifest.xml" in names and any(n.startswith("classes") and n.endswith(".dex") for n in names)
    except zipfile.BadZipFile:
        return False


def accept(path: Path, source: str, final_url: str) -> dict:
    digest = sha256(path)
    size = path.stat().st_size
    log(f"candidate source={source} size={size} sha256={digest}")
    if digest != EXPECTED_SHA256:
        raise ValueError(f"SHA-256 mismatch for {source}: {digest}")
    if not looks_like_apk(path):
        raise ValueError(f"not a valid APK zip: {source}")
    return {
        "app": "HA Tunnel Plus",
        "package": PACKAGE,
        "version": VERSION,
        "source": source,
        "final_url": final_url,
        "sha256": digest,
        "size_bytes": size,
        "size_mb": round(size / 1_000_000, 2),
        "expected_sha256": EXPECTED_SHA256,
    }


def try_download(url: str, dest: Path, source: str, referer: str | None = None) -> dict | None:
    tmp = dest.with_suffix(".part")
    proc = curl(url, out=tmp, referer=referer)
    if proc.returncode != 0:
        log(f"download failed {source}: rc={proc.returncode} stderr={proc.stderr.strip()[:500]}")
        tmp.unlink(missing_ok=True)
        return None
    try:
        meta = accept(tmp, source, url)
    except Exception as exc:
        log(f"reject {source}: {exc}")
        tmp.unlink(missing_ok=True)
        return None
    tmp.replace(dest)
    return meta


def extract_urls(html_text: str, patterns: list[str]) -> list[str]:
    found: list[str] = []
    for pat in patterns:
        for m in re.finditer(pat, html_text, re.I):
            u = html.unescape(m.group(1))
            if u.startswith("//"):
                u = "https:" + u
            if u not in found:
                found.append(u)
    return found


def fetch_html(url: str) -> str | None:
    proc = curl(url, timeout=90)
    if proc.returncode != 0:
        log(f"page fetch failed {url}: rc={proc.returncode} stderr={proc.stderr.strip()[:500]}")
        return None
    return proc.stdout


def uptodown_candidates() -> list[str]:
    page = fetch_html(UPTODOWN_PAGE)
    if not page:
        return []
    pats = [
        r'data-url=["\']([^"\']+)["\']',
        r'data-download-url=["\']([^"\']+)["\']',
        r'href=["\'](https?://dw\.uptodown\.net/dwn/[^"\']+)["\']',
        r'(https?://dw\.uptodown\.net/dwn/[A-Za-z0-9+/=_%\-.]+)',
        r'href=["\']([^"\']*?/dwn/[^"\']+)["\']',
    ]
    urls = extract_urls(page, pats)
    out = []
    for u in urls:
        if u.startswith("/"):
            u = "https://ha-tunnel-plus.en.uptodown.com" + u
        if "uptodown" in u or "utdstc" in u:
            out.append(u)
    log(f"uptodown candidates: {out}")
    return out


def apkpure_candidates() -> list[str]:
    urls = [
        "https://d.apkpure.com/b/APK/com.hatunnel.plus?version=latest",
        "https://d.cdnpure.com/b/APK/com.hatunnel.plus?version=latest",
        "https://d.apkpure.com/b/APK/com.hatunnel.plus?version=1.7.1",
    ]
    page = fetch_html(APKPURE_PAGE)
    if page:
        pats = [
            r'<a[^>]+id=["\']download_link["\'][^>]+href=["\']([^"\']+)["\']',
            r'href=["\'](https?://d\.(?:apkpure|cdnpure)\.com/b/APK/[^"\']+)["\']',
            r'data-dt-url=["\']([^"\']+)["\']',
        ]
        for u in extract_urls(page, pats):
            if u.startswith("/"):
                u = "https://apkpure.com" + u
            if u not in urls:
                urls.insert(0, u)
    log(f"apkpure candidates: {urls}")
    return urls


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default="downloads")
    args = ap.parse_args()
    out = Path(args.out).resolve()
    out.mkdir(parents=True, exist_ok=True)
    dest = out / f"HA-Tunnel-Plus-{VERSION}.apk"
    meta_path = out / f"HA-Tunnel-Plus-{VERSION}.json"

    attempts: list[tuple[str, list[str], str | None]] = [
        ("uptodown", uptodown_candidates(), UPTODOWN_PAGE),
        ("apkpure", apkpure_candidates(), APKPURE_PAGE),
    ]
    for source, urls, referer in attempts:
        for url in urls:
            meta = try_download(url, dest, source, referer)
            if meta:
                meta_path.write_text(json.dumps(meta, indent=2) + "\n")
                log(f"SUCCESS: {dest} sha256={meta['sha256']}")
                return 0
    log("ERROR: could not download a SHA-256-verified HA Tunnel Plus APK")
    return 1


if __name__ == "__main__":
    sys.exit(main())
