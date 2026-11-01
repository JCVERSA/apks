#!/usr/bin/env python3
"""Static design / theme-mode audit for the uploaded ZArchiver APK.

Runs only on a disposable GitHub Actions runner. Never executes the APK.
Inputs: WORK_ROOT (apktool decoded tree + jadx sources), REPORT_DIR (output).
"""
from __future__ import annotations

import json
import os
import re
import shutil
import xml.etree.ElementTree as ET
from collections import Counter, defaultdict
from pathlib import Path

WORK = Path(os.environ["WORK_ROOT"])
REPORT = Path(os.environ["REPORT_DIR"])
DECODED = WORK / "decoded"
RES = DECODED / "res"
JADX = WORK / "jadx" / "sources"
REPORT.mkdir(parents=True, exist_ok=True)

ANDROID = "{http://schemas.android.com/apk/res/android}"
REPORT_REL = REPORT


def rel(p: Path) -> str:
    try:
        return str(p.relative_to(DECODED))
    except ValueError:
        return str(p)


def parse_xml(p: Path):
    try:
        return ET.parse(p).getroot()
    except Exception:
        return None


# --------------------------------------------------------------------------
# 1. Resource inventory by type and qualifier
# --------------------------------------------------------------------------
res_dirs = sorted([d for d in RES.iterdir() if d.is_dir()]) if RES.is_dir() else []
inventory = []
qualifiers = Counter()
type_counts = Counter()
for d in res_dirs:
    parts = d.name.split("-", 1)
    rtype = parts[0]
    qual = parts[1] if len(parts) > 1 else ""
    files = [f for f in d.iterdir() if f.is_file()]
    inventory.append({
        "dir": d.name,
        "type": rtype,
        "qualifiers": qual,
        "file_count": len(files),
        "bytes": sum(f.stat().st_size for f in files),
    })
    qualifiers[qual or "(default)"] += len(files)
    type_counts[rtype] += len(files)

night_dirs = [d.name for d in res_dirs if re.search(r"-night\b|-notnight\b", d.name)]
v31_dirs = [d.name for d in res_dirs if re.search(r"-v3[1-9]\b", d.name)]
rtl_dirs = [d.name for d in res_dirs if re.search(r"-ldrtl\b|-ar\b|-fa\b|-he\b", d.name)]
size_dirs = [d.name for d in res_dirs if re.search(r"-sw\d+dp|-w\d+dp|-h\d+dp|-(small|normal|large|xlarge)\b|-land\b|-port\b", d.name)]
density_dirs = [d.name for d in res_dirs if re.search(r"-(ldpi|mdpi|hdpi|xhdpi|xxhdpi|xxxhdpi|nodpi|anydpi)", d.name)]

# --------------------------------------------------------------------------
# 2. Values: colors, styles, dimens, attrs, bools, integers
# --------------------------------------------------------------------------
values_files = sorted(RES.glob("values*/*.xml"))
colors: dict[str, dict] = {}
styles: dict[str, dict] = {}
dimens: dict[str, dict] = {}
attrs: dict[str, dict] = {}
bools: dict[str, dict] = {}
strings_by_locale: dict[str, set[str]] = {}
arrays: dict[str, dict] = {}

for vf in values_files:
    qual = vf.parent.name[len("values"):] or "(default)"
    root = parse_xml(vf)
    if root is None:
        continue
    for el in root:
        name = el.get("name")
        if not name:
            continue
        text = (el.text or "").strip()
        if el.tag == "color":
            colors.setdefault(name, {"variants": {}})["variants"][qual] = text
        elif el.tag == "style":
            key = name
            entry = styles.setdefault(key, {"name": name, "parent": el.get("parent"), "variants": {}})
            items = {}
            for it in el.findall("item"):
                iname = it.get("name")
                if iname:
                    items[iname] = (it.text or "").strip()
            entry["variants"][qual] = {"file": rel(vf), "items": items}
            if el.get("parent"):
                entry["parent"] = el.get("parent")
        elif el.tag == "dimen":
            dimens.setdefault(name, {"variants": {}})["variants"][qual] = text
        elif el.tag in ("attr", "declare-styleable"):
            if el.tag == "attr":
                attrs.setdefault(name, {"variants": {}})["variants"][qual] = el.get("format", "")
            else:
                for a in el.findall("attr"):
                    if a.get("name"):
                        attrs.setdefault(a.get("name"), {"variants": {}})["variants"][qual] = a.get("format", "")
        elif el.tag == "bool":
            bools.setdefault(name, {"variants": {}})["variants"][qual] = text
        elif el.tag == "string":
            strings_by_locale.setdefault(qual, set()).add(name)
        elif el.tag in ("string-array", "integer-array", "array"):
            arrays.setdefault(name, {"variants": {}})["variants"][qual] = [
                (i.text or "").strip() for i in el.findall("item")
            ]

# --------------------------------------------------------------------------
# 3. Colour resolution + WCAG contrast
# --------------------------------------------------------------------------
FRAMEWORK_COLORS = {
    "white": "#ffffffff", "black": "#ff000000", "transparent": "#00000000",
    "darker_gray": "#ffaaaaaa", "primary_text_dark": "#ffffffff",
    "primary_text_light": "#ff000000", "background_dark": "#ff000000",
    "background_light": "#ffffffff", "holo_blue_light": "#ff33b5e5",
    "holo_blue_dark": "#ff0099cc", "holo_red_light": "#ffff4444",
}


def qualifier_state(qual: str):
    """Return (api, night) encoded by a values qualifier."""
    m = re.search(r"-v(\d+)", qual)
    return (int(m.group(1)) if m else 1), ("-night" in qual)


def qualifier_applies(qual: str, api: int, night: bool) -> bool:
    q_api, q_night = qualifier_state(qual)
    return q_api <= api and q_night == night


def resolve_color(value: str, depth: int = 0, api: int = 31, night: bool = False):
    """Return (hex_or_None, note) for one resource configuration.

    Material You system_* colors are device/wallpaper dependent and must not
    be replaced by an arbitrary fixed palette in a contrast report.
    """
    if value is None or depth > 8:
        return None, "unresolved"
    v = value.strip()
    if v.startswith("#"):
        h = v[1:]
        if len(h) in (3, 4):
            h = "".join(c * 2 for c in h)
        if len(h) == 6:
            h = "ff" + h
        if len(h) == 8 and re.fullmatch(r"[0-9a-fA-F]{8}", h):
            return "#" + h.lower(), "literal"
        return None, "bad-literal"
    if v.startswith("@android:color/system_"):
        return None, "dynamic-device-palette"
    if v.startswith("@android:color/"):
        key = v.split("/", 1)[1]
        return FRAMEWORK_COLORS.get(key), "framework" if key in FRAMEWORK_COLORS else "framework-unknown"
    if v.startswith("@color/"):
        key = v.split("/", 1)[1]
        entry = colors.get(key)
        if entry:
            candidates = [q for q in entry["variants"] if qualifier_applies(q, api, night)]
            if candidates:
                pick = max(candidates, key=lambda q: qualifier_state(q)[0])
                return resolve_color(entry["variants"][pick], depth + 1, api, night)
        return None, "missing-color-resource"
    if v.startswith("?"):
        return None, "theme-attribute"
    return None, "non-color"


def srgb_luminance(hex8: str) -> float:
    h = hex8.lstrip("#")
    r, g, b = (int(h[2:4], 16) / 255, int(h[4:6], 16) / 255, int(h[6:8], 16) / 255)
    def lin(c):
        return c / 12.92 if c <= 0.03928 else ((c + 0.055) / 1.055) ** 2.4
    return 0.2126 * lin(r) + 0.7152 * lin(g) + 0.0722 * lin(b)


def contrast(fg: str, bg: str):
    l1, l2 = srgb_luminance(fg), srgb_luminance(bg)
    hi, lo = max(l1, l2), min(l1, l2)
    return round((hi + 0.05) / (lo + 0.05), 2)


resolved_colors = {}
for name, entry in colors.items():
    variants = {}
    for qual, raw in entry["variants"].items():
        hexv, note = resolve_color(raw)
        variants[qual] = {"raw": raw, "hex": hexv, "note": note}
    resolved_colors[name] = variants

# Theme classification + resolved key attributes
THEME_KEYS = [
    "android:windowBackground", "android:colorBackground", "android:textColor",
    "android:textColorPrimary", "android:textColorSecondary", "android:colorPrimary",
    "android:colorPrimaryDark", "android:colorAccent", "android:statusBarColor",
    "android:navigationBarColor", "android:windowLightStatusBar",
    "android:windowLightNavigationBar", "android:isLightTheme", "isLightActionBar",
    "android:forceDarkAllowed", "android:windowTranslucentStatus",
    "android:fitsSystemWindows", "colorNMask", "android:textSize",
    # These are the attributes actually consumed by the file-list renderer.
    # Framework textColorPrimary often remains in an unresolved OEM parent.
    "backgroundColorFileList", "defaultTextColorFileList",
    "defaultTextColorFileListSub", "defaultTextColorFileListMessage",
    "colorPrimary", "colorPrimaryDark", "colorAccent",
]


def style_items(name: str, seen=None, api: int = 31, night: bool = False):
    """Merge parent/style items applicable to one API/night configuration."""
    seen = seen or set()
    if name in seen or name not in styles:
        return {}
    seen.add(name)
    entry = styles[name]
    parent = entry.get("parent")
    if not parent and "." in name:
        parent = name.rsplit(".", 1)[0]
    merged = {}
    if parent:
        parent_key = parent.replace("@android:style/", "").replace("@style/", "")
        merged.update(style_items(parent_key, seen, api, night))
    candidates = [q for q in entry["variants"] if qualifier_applies(q, api, night)]
    for qual in sorted(candidates, key=lambda q: qualifier_state(q)[0]):
        merged.update(entry["variants"][qual]["items"])
    return merged


theme_report = []
for name in sorted(styles):
    if not re.search(r"(?i)theme", name):
        continue
    items = style_items(name)
    klass = []
    if re.search(r"(?i)daynight", name):
        klass.append("day-night")
    if re.search(r"(?i)amoled|black", name):
        klass.append("amoled/black")
    if re.search(r"(?i)eink", name):
        klass.append("e-ink")
    if re.search(r"(?i)dynamic", name):
        klass.append("dynamic-color")
    if re.search(r"(?i)light", name) and "day-night" not in klass:
        klass.append("light")
    if re.search(r"(?i)dark", name) and "day-night" not in klass:
        klass.append("dark")
    resolved = {}
    for k in THEME_KEYS:
        if k in items:
            raw = items[k]
            hexv, note = resolve_color(raw, api=31, night=False)
            resolved[k] = {"raw": raw, "hex": hexv, "note": note}
    # Contrast scope: the file-list text actually rendered from custom attrs.
    # Do not infer this from android:textColorPrimary in an OEM parent theme.
    bg = resolved.get("backgroundColorFileList", {}).get("hex")
    fg = resolved.get("defaultTextColorFileList", {}).get("hex")
    sub = resolved.get("defaultTextColorFileListSub", {}).get("hex")
    msg = resolved.get("defaultTextColorFileListMessage", {}).get("hex")
    ratio = contrast(fg, bg) if fg and bg else None
    dynamic = any(v.get("note") == "dynamic-device-palette" for v in resolved.values())
    theme_report.append({
        "style": name,
        "parent": styles[name].get("parent"),
        "classes": klass,
        "variant_qualifiers": sorted(styles[name]["variants"]),
        "key_items": resolved,
        "contrast_scope": "file-list main text on backgroundColorFileList; API31 day configuration",
        "text_on_background_contrast": ratio,
        "secondary_text_contrast": contrast(sub, bg) if sub and bg else None,
        "message_text_contrast": contrast(msg, bg) if msg and bg else None,
        "dynamic_device_palette": dynamic,
        "contrast_verdict": (
            "unknown-device-palette" if dynamic else
            "unknown" if ratio is None else
            "pass-AA-normal" if ratio >= 4.5 else
            "pass-AA-large-only" if ratio >= 3 else "fail-AA"
        ),
        "item_count": len(items),
    })

# --------------------------------------------------------------------------
# 4. Layouts: structure, a11y, RTL, units, hardcoded text
# --------------------------------------------------------------------------
layout_files = sorted(RES.glob("layout*/*.xml"))
layout_rows = []
a11y_issues = []
rtl_issues = []
unit_issues = []
hardcoded_text = []
edge_to_edge = []
CLICKABLE = {"Button", "ImageButton", "ImageView", "CheckBox", "RadioButton", "Switch",
             "ToggleButton", "FloatingActionButton", "TextView", "RelativeLayout",
             "LinearLayout", "FrameLayout", "CheckedTextView"}
SMALL_TARGET = re.compile(r"^(\d+(?:\.\d+)?)(dp|dip|px|sp)$")


def walk(el, depth, row, path, lfile):
    row["max_depth"] = max(row["max_depth"], depth)
    row["view_count"] += 1
    tag = el.tag.split(".")[-1]
    row["tags"][tag] = row["tags"].get(tag, 0) + 1
    a = {k.replace(ANDROID, "android:"): v for k, v in el.attrib.items()}
    if "android:layout_weight" in a:
        row["weighted"] += 1
    if tag in ("ListView", "GridView", "ScrollView", "HorizontalScrollView") :
        row["scrollables"] += 1
    if a.get("android:onClick"):
        row["xml_onclick"] += 1
    txt = a.get("android:text", "")
    if txt and not txt.startswith("@"):
        hardcoded_text.append({"file": lfile, "tag": tag, "id": a.get("android:id", ""), "text": txt[:120]})
    hint = a.get("android:hint", "")
    if hint and not hint.startswith("@"):
        hardcoded_text.append({"file": lfile, "tag": tag, "id": a.get("android:id", ""), "text": "hint:" + hint[:110]})
    cd = a.get("android:contentDescription")
    important = a.get("android:importantForAccessibility")
    if tag in ("ImageView", "ImageButton", "FloatingActionButton") and not cd and important != "no":
        a11y_issues.append({"file": lfile, "tag": tag, "id": a.get("android:id", ""), "issue": "missing contentDescription"})
    if a.get("android:clickable") == "true" and not cd and tag not in ("TextView", "Button"):
        a11y_issues.append({"file": lfile, "tag": tag, "id": a.get("android:id", ""), "issue": "clickable without contentDescription"})
    for side in ("Left", "Right"):
        for key in (f"android:padding{side}", f"android:layout_margin{side}", f"android:drawable{side}",
                    f"android:layout_alignParent{side}", f"android:layout_to{side}Of"):
            if key in a:
                startend = key.replace(side, "Start" if side == "Left" else "End")
                if startend not in a:
                    rtl_issues.append({"file": lfile, "tag": tag, "attr": key})
    for key in ("android:textSize",):
        if key in a:
            v = a[key]
            if v.endswith("dp") or v.endswith("px"):
                unit_issues.append({"file": lfile, "id": a.get("android:id", ""), "attr": key, "value": v, "issue": "text size not in sp"})
            elif v.startswith("@dimen/"):
                dname = v.split("/", 1)[1]
                dval = (dimens.get(dname, {}).get("variants", {}) or {}).get("(default)", "")
                if dval.endswith("dp") or dval.endswith("px"):
                    unit_issues.append({"file": lfile, "id": a.get("android:id", ""), "attr": key, "value": f"{v}={dval}", "issue": "text size dimen not in sp"})
    for key in ("android:layout_width", "android:layout_height"):
        v = a.get(key, "")
        m = SMALL_TARGET.match(v)
        # 0dp with layout_weight is the standard LinearLayout idiom, not a
        # zero-sized touch target. Keep nonzero small dimensions as candidates
        # for manual review (the clickable area may be the parent row).
        if m and tag in CLICKABLE and 0 < float(m.group(1)) < 48 and m.group(2) in ("dp", "dip"):
            a11y_issues.append({"file": lfile, "tag": tag, "id": a.get("android:id", ""), "issue": f"touch target {v} < 48dp ({key})"})
        px = re.fullmatch(r"(\d+(?:\.\d+)?)px", v)
        if px and float(px.group(1)) != 0:
            unit_issues.append({"file": lfile, "id": a.get("android:id", ""), "attr": key, "value": v, "issue": "absolute px"})
    if a.get("android:fitsSystemWindows") == "true":
        edge_to_edge.append({"file": lfile, "tag": tag, "id": a.get("android:id", "")})
    for child in el:
        walk(child, depth + 1, row, path + "/" + tag, lfile)


for lf in layout_files:
    root = parse_xml(lf)
    if root is None:
        continue
    row = {"file": rel(lf), "max_depth": 0, "view_count": 0, "tags": {}, "weighted": 0,
           "scrollables": 0, "xml_onclick": 0, "bytes": lf.stat().st_size}
    walk(root, 1, row, "", rel(lf))
    layout_rows.append(row)

layout_rows.sort(key=lambda r: (-r["max_depth"], -r["view_count"]))

# --------------------------------------------------------------------------
# 5. Icons / drawables
# --------------------------------------------------------------------------
drawables = []
for d in res_dirs:
    if not d.name.startswith(("drawable", "mipmap")):
        continue
    for f in sorted(d.iterdir()):
        if not f.is_file():
            continue
        entry = {"file": rel(f), "bytes": f.stat().st_size, "kind": f.suffix.lstrip(".").lower()}
        if f.suffix == ".xml":
            root = parse_xml(f)
            if root is not None:
                entry["root_tag"] = root.tag
                if root.tag == "adaptive-icon":
                    entry["adaptive_layers"] = [c.tag for c in root]
                    entry["has_monochrome"] = any(c.tag == "monochrome" for c in root)
                if root.tag == "vector":
                    entry["vector_size"] = f"{root.get(ANDROID + 'width')}x{root.get(ANDROID + 'height')}"
                    entry["vector_tint"] = root.get(ANDROID + "tint")
                    entry["hardcoded_fills"] = len(re.findall(r'android:fillColor="#', f.read_text(errors="replace")))
        drawables.append(entry)

adaptive = [d for d in drawables if d.get("root_tag") == "adaptive-icon"]
monochrome = [d for d in adaptive if d.get("has_monochrome")]
vectors = [d for d in drawables if d.get("root_tag") == "vector"]
rasters = [d for d in drawables if d["kind"] in ("png", "webp", "jpg", "gif")]
nine_patch = [d for d in drawables if d["file"].endswith(".9.png")]

# --------------------------------------------------------------------------
# 6. Localisation coverage
# --------------------------------------------------------------------------
default_strings = strings_by_locale.get("(default)", set())
locale_rows = []
for qual, names in sorted(strings_by_locale.items()):
    if qual == "(default)":
        continue
    missing = sorted(default_strings - names)
    locale_rows.append({
        "qualifier": qual,
        "translated": len(names & default_strings),
        "default_total": len(default_strings),
        "coverage_pct": round(100 * len(names & default_strings) / max(1, len(default_strings)), 1),
        "missing_count": len(missing),
        "missing_sample": missing[:25],
        "extra_keys": sorted(names - default_strings)[:15],
    })
locale_rows.sort(key=lambda r: r["coverage_pct"])

# --------------------------------------------------------------------------
# 7. Code-side theme / mode wiring
# --------------------------------------------------------------------------
CODE_PATTERNS = {
    "night_mode_api": r"UI_MODE_NIGHT_MASK|UI_MODE_NIGHT_YES|setDefaultNightMode|MODE_NIGHT_|AppCompatDelegate",
    "dynamic_color_api": r"system_accent1|system_neutral1|DynamicColors|getColorAccent\(\)|android\.R\.color\.system_",
    "theme_selection": r"R\.style\.AppTheme|iTheme|iActionbarColorN|iFolderColorN|setTheme\(",
    "config_changes": r"onConfigurationChanged|uiMode",
    "force_dark": r"forceDarkAllowed|setForceDarkAllowed",
    "edge_to_edge": r"setDecorFitsSystemWindows|WindowInsets|OnApplyWindowInsetsListener|setFitsSystemWindows|WindowInsetsController|setSystemBarsAppearance|WindowCompat|enableEdgeToEdge|LAYOUT_IN_DISPLAY_CUTOUT",
    "back_gesture": r"OnBackInvokedDispatcher|OnBackInvokedCallback|onBackPressed|KEYCODE_BACK|dispatchKeyEvent|onKeyUp|getKeyCode\(\) == 4",
    "text_scaling": r"fontScale|Configuration\(|scaledDensity|createConfigurationContext",
    "a11y_api": r"AccessibilityManager|AccessibilityNodeInfo|contentDescription|announceForAccessibility|importantForAccessibility|TalkBack",
    "rtl_api": r"LAYOUT_DIRECTION_RTL|getLayoutDirection|isRtl|TextUtils\.getLayoutDirectionFromLocale",
    "animation": r"ObjectAnimator|ValueAnimator|TransitionManager|setDuration|MotionEvent",
}
code_hits = {k: [] for k in CODE_PATTERNS}
compiled = {k: re.compile(v) for k, v in CODE_PATTERNS.items()}
java_files = sorted(JADX.rglob("*.java")) if JADX.is_dir() else []
for jf in java_files:
    try:
        text = jf.read_text(errors="replace")
    except OSError:
        continue
    for cat, rx in compiled.items():
        found = []
        for i, line in enumerate(text.splitlines(), 1):
            if rx.search(line):
                found.append({"line": i, "text": line.strip()[:220]})
                if len(found) >= 12:
                    break
        if found:
            code_hits[cat].append({"file": str(jf.relative_to(JADX)), "hits": found})
for cat in code_hits:
    code_hits[cat].sort(key=lambda x: -len(x["hits"]))
    code_hits[cat] = code_hits[cat][:40]

# --------------------------------------------------------------------------
# 8. Manifest design-relevant flags
# --------------------------------------------------------------------------
manifest_path = DECODED / "AndroidManifest.xml"
manifest_design = {}
if manifest_path.is_file():
    mroot = parse_xml(manifest_path)
    if mroot is not None:
        app = mroot.find("application")
        if app is not None:
            for k in ("theme", "supportsRtl", "appCategory", "localeConfig", "enableOnBackInvokedCallback",
                      "hardwareAccelerated", "largeHeap", "resizeableActivity", "banner", "roundIcon"):
                manifest_design[k] = app.get(ANDROID + k)
            manifest_design["activities"] = [
                {
                    "name": a.get(ANDROID + "name"),
                    "theme": a.get(ANDROID + "theme"),
                    "configChanges": a.get(ANDROID + "configChanges"),
                    "resizeableActivity": a.get(ANDROID + "resizeableActivity"),
                    "screenOrientation": a.get(ANDROID + "screenOrientation"),
                    "exported": a.get(ANDROID + "exported"),
                }
                for a in app.findall("activity")
            ]
        ss = mroot.find("supports-screens")
        if ss is not None:
            manifest_design["supports_screens"] = {k.replace(ANDROID, ""): v for k, v in ss.attrib.items()}
        manifest_design["uses_features"] = [
            {k.replace(ANDROID, ""): v for k, v in f.attrib.items()} for f in mroot.findall("uses-feature")
        ]

# --------------------------------------------------------------------------
# 9. Copy bounded evidence
# --------------------------------------------------------------------------
copied, copied_bytes = [], 0
MAX_BYTES = 12 * 1024 * 1024
PRIORITY = ("values/", "values-v", "values-night", "layout/", "layout-v", "layout-sw", "xml/", "xml-v", "menu/", "anim", "color/", "mipmap-anydpi")


def want(p: Path) -> bool:
    r = rel(p)
    return any(r.startswith("res/" + pref) for pref in PRIORITY) or r == "AndroidManifest.xml"


candidates = [manifest_path] + sorted(RES.glob("values*/*.xml")) + sorted(RES.glob("layout*/*.xml")) \
    + sorted(RES.glob("menu*/*.xml")) + sorted(RES.glob("xml/*.xml")) + sorted(RES.glob("color*/*.xml")) \
    + sorted(RES.glob("anim*/*.xml")) + sorted(RES.glob("mipmap*/*.xml")) + sorted(RES.glob("drawable*/*.xml"))
for src in candidates:
    if not src.is_file() or not want(src):
        continue
    size = src.stat().st_size
    if size > 512 * 1024 or copied_bytes + size > MAX_BYTES:
        continue
    dst = REPORT / "resources" / rel(src)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)
    copied.append(rel(src))
    copied_bytes += size

# --------------------------------------------------------------------------
# 10. Persist
# --------------------------------------------------------------------------
def dump(name, obj):
    (REPORT / name).write_text(json.dumps(obj, indent=2, ensure_ascii=False) + "\n")


dump("design-resource-inventory.json", {
    "dirs": inventory,
    "type_counts": dict(type_counts),
    "qualifier_counts": dict(qualifiers),
    "night_qualified_dirs": night_dirs,
    "v31_plus_dirs": v31_dirs,
    "size_orientation_dirs": size_dirs,
    "density_dirs": density_dirs,
})
dump("design-colors.json", {"colors": resolved_colors, "color_resource_count": len(colors)})
dump("design-themes.json", {"theme_count": len(theme_report), "themes": theme_report})
dump("design-layouts.json", {
    "layout_count": len(layout_rows),
    "layouts": layout_rows,
    "a11y_issue_count": len(a11y_issues),
    "a11y_issues": a11y_issues[:600],
    "rtl_issue_count": len(rtl_issues),
    "rtl_issues": rtl_issues[:400],
    "unit_issue_count": len(unit_issues),
    "unit_issues": unit_issues[:400],
    "hardcoded_text_count": len(hardcoded_text),
    "hardcoded_text": hardcoded_text[:400],
    "fitsSystemWindows_count": len(edge_to_edge),
    "fitsSystemWindows": edge_to_edge[:200],
})
dump("design-icons.json", {
    "drawable_file_count": len(drawables),
    "adaptive_icons": adaptive,
    "monochrome_icons": monochrome,
    "vector_count": len(vectors),
    "raster_count": len(rasters),
    "nine_patch_count": len(nine_patch),
    "raster_by_dir": dict(Counter(str(Path(d["file"]).parent) for d in rasters)),
    "largest_rasters": sorted(rasters, key=lambda d: -d["bytes"])[:25],
})
dump("design-locales.json", {
    "default_string_count": len(default_strings),
    "locale_count": len(locale_rows),
    "locales": locale_rows,
})
dump("design-arrays.json", arrays)
dump("design-dimens.json", dimens)
dump("design-code-wiring.json", code_hits)
dump("design-manifest.json", manifest_design)

summary = {
    "resource_dirs": len(res_dirs),
    "resource_files": sum(type_counts.values()),
    "resource_types": dict(type_counts),
    "styles_total": len(styles),
    "themes_total": len(theme_report),
    "colors_total": len(colors),
    "dimens_total": len(dimens),
    "custom_attrs_total": len(attrs),
    "layouts_total": len(layout_rows),
    "night_qualified_dirs": night_dirs,
    "v31_plus_dirs": v31_dirs,
    "adaptive_icon_count": len(adaptive),
    "monochrome_icon_count": len(monochrome),
    "vector_count": len(vectors),
    "raster_count": len(rasters),
    "default_strings": len(default_strings),
    "locales": len(locale_rows),
    "a11y_issues": len(a11y_issues),
    "rtl_issues": len(rtl_issues),
    "unit_issues": len(unit_issues),
    "hardcoded_texts": len(hardcoded_text),
    "code_pattern_files": {k: len(v) for k, v in code_hits.items()},
    "evidence_files_copied": len(copied),
    "evidence_bytes": copied_bytes,
    "runtime_execution": "NOT TESTED",
    "visual_rendering": "NOT RENDERED; static resource/code analysis only",
}
dump("design-summary.json", summary)

# Human-readable digest
lines = ["# ZArchiver — design / mode static digest", ""]
lines.append(f"- Resource dirs: {summary['resource_dirs']}, files: {summary['resource_files']}")
lines.append(f"- Styles: {summary['styles_total']} (themes: {summary['themes_total']}), colors: {summary['colors_total']}, dimens: {summary['dimens_total']}")
lines.append(f"- Layouts: {summary['layouts_total']}; night-qualified dirs: {night_dirs or 'NONE'}; v31+ dirs: {v31_dirs or 'NONE'}")
lines.append(f"- Adaptive icons: {len(adaptive)}, monochrome (themed icons): {len(monochrome)}, vectors: {len(vectors)}, rasters: {len(rasters)}")
lines.append(f"- Strings: {len(default_strings)} default, {len(locale_rows)} locales")
lines.append(f"- A11y issues: {len(a11y_issues)}; RTL issues: {len(rtl_issues)}; unit issues: {len(unit_issues)}; hardcoded texts: {len(hardcoded_text)}")
lines += ["", "## File-list contrast (custom renderer attrs; API31 day; static)", "",
          "Dynamic system_* palettes are device-dependent and reported as unknown.", ""]
lines.append("| Style | Classes | FG | BG | Main | Sub | Message | Verdict |")
lines.append("|---|---|---|---|---:|---:|---:|---|")
for t in theme_report:
    fg = t["key_items"].get("defaultTextColorFileList", {}).get("hex") or "?"
    bg = t["key_items"].get("backgroundColorFileList", {}).get("hex") or "?"
    lines.append(f"| `{t['style']}` | {', '.join(t['classes']) or '-'} | {fg} | {bg} | "
                 f"{t['text_on_background_contrast'] if t['text_on_background_contrast'] is not None else '-'} | "
                 f"{t['secondary_text_contrast'] if t['secondary_text_contrast'] is not None else '-'} | "
                 f"{t['message_text_contrast'] if t['message_text_contrast'] is not None else '-'} | {t['contrast_verdict']} |")
lines += ["", "## Deepest layouts", ""]
for r in layout_rows[:20]:
    lines.append(f"- `{r['file']}` depth={r['max_depth']} views={r['view_count']} weighted={r['weighted']}")
lines += ["", "## Lowest translation coverage", ""]
for r in locale_rows[:15]:
    lines.append(f"- {r['qualifier']}: {r['coverage_pct']}% ({r['translated']}/{r['default_total']}), missing {r['missing_count']}")
(REPORT / "design-digest.md").write_text("\n".join(lines) + "\n")
print(json.dumps(summary, indent=2, ensure_ascii=False))
