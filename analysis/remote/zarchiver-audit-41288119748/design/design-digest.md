# ZArchiver — design / mode static digest

- Resource dirs: 83, files: 675
- Styles: 235 (themes: 184), colors: 24, dimens: 31
- Layouts: 100; night-qualified dirs: ['values-night', 'values-night-v31']; v31+ dirs: ['values-night-v31', 'values-v31', 'xml-v33']
- Adaptive icons: 4, monochrome (themed icons): 3, vectors: 191, rasters: 205
- Strings: 422 default, 33 locales
- A11y issues: 43; RTL issues: 333; unit issues: 89; hardcoded texts: 18

## Theme contrast (resolved text on background)

| Style | Classes | FG | BG | Ratio | Verdict |
|---|---|---|---|---:|---|
| `AppTheme.Amoled.Color.ActionBar` | amoled/black | ? | ? | - | unknown |
| `AppTheme.Dark` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Amoled` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Amber` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Blue` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.BlueGrey` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Brown` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Color` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Cyan` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.DarkGrey` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.DeepOrange` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.DeepPurple` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Green` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Grey` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Indigo` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.LightBlue` | amoled/black, light, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.LightGreen` | amoled/black, light, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Lime` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Orange` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Pink` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Purple` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Teal` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.Material.Yellow` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.Amoled.actionBarPopupTheme` | amoled/black, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dark.DeviceDefault.Color.OverFlow` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.AlertDialog` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Amber` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Blue` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.BlueGrey` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Brown` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Color` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Color.ActionBar` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Color.ActionMode` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Color.Dialog` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Color.OverFlow` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Cyan` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.DarkGrey` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.DeepOrange` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.DeepPurple` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Green` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Grey` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Indigo` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.LightBlue` | light, dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.LightGreen` | light, dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Lime` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Orange` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Pink` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Purple` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Teal` | dark | ? | ? | - | unknown |
| `AppTheme.Dark.Material.Yellow` | dark | ? | ? | - | unknown |
| `AppTheme.DayNight` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Amber` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Blue` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.BlueGrey` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Brown` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Cyan` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.DarkGrey` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.DeepOrange` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.DeepPurple` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Green` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Grey` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Indigo` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.LightBlue` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.LightGreen` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Lime` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Orange` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Pink` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Purple` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Teal` | day-night | ? | ? | - | unknown |
| `AppTheme.DayNight.Yellow` | day-night | ? | ? | - | unknown |
| `AppTheme.Dynamic.ActionBar` | dynamic-color | ? | ? | - | unknown |
| `AppTheme.Dynamic.ActionBar.Menu` | dynamic-color | ? | ? | - | unknown |
| `AppTheme.Dynamic.Dark` | dynamic-color, dark | ? | ? | - | unknown |
| `AppTheme.Dynamic.Dark.Amoled` | amoled/black, dynamic-color, dark | ? | #ff202020 | - | unknown |
| `AppTheme.Dynamic.DayNight` | day-night, dynamic-color | ? | ? | - | unknown |
| `AppTheme.Dynamic.Light` | dynamic-color, light | ? | ? | - | unknown |
| `AppTheme.Dynamic.Light.ActionBar` | dynamic-color, light | ? | ? | - | unknown |
| `AppTheme.Dynamic.Light.ActionBar.Menu` | dynamic-color, light | ? | ? | - | unknown |
| `AppTheme.Dynamic.Light.DarkActionBar` | dynamic-color, light, dark | ? | ? | - | unknown |
| `AppTheme.Dynamic.Light.EInk` | e-ink, dynamic-color, light | ? | #ffffffff | - | unknown |
| `AppTheme.EInk.Color.ActionBar` | e-ink | ? | ? | - | unknown |
| `AppTheme.Light` | light | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.DeviceDefault.Color.OverFlow` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Amber` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Blue` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.BlueGrey` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Brown` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Color` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Color.OverFlow` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Cyan` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.DarkGrey` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.DeepOrange` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.DeepPurple` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Green` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Grey` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Indigo` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.LightBlue` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.LightGreen` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Lime` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Orange` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Pink` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Purple` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Teal` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DarkActionBar.Material.Yellow` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.DeviceDefault.Color.OverFlow` | light | ? | ? | - | unknown |
| `AppTheme.Light.EInk` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Amber` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Blue` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.BlueGrey` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Brown` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Color` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Cyan` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.DarkGrey` | e-ink, light, dark | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.DeepOrange` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.DeepPurple` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Green` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Grey` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Indigo` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.LightBlue` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.LightGreen` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Lime` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Orange` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Pink` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Purple` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Teal` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.Material.Yellow` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.EInk.actionBarPopupTheme` | e-ink, light | ? | #ffffffff | - | unknown |
| `AppTheme.Light.Material.AlertDialog` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Amber` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Blue` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.BlueGrey` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Brown` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Color` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Color.ActionBar` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Color.ActionMode` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Color.Dialog` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Color.OverFlow` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Cyan` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.DarkGrey` | light, dark | ? | ? | - | unknown |
| `AppTheme.Light.Material.DeepOrange` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.DeepPurple` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Green` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Grey` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Indigo` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.LightBlue` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.LightGreen` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Lime` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Orange` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Pink` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Purple` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Teal` | light | ? | ? | - | unknown |
| `AppTheme.Light.Material.Yellow` | light | ? | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar` | - | ? | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar.Light` | light | ? | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar.Light.Subtitle` | light | #ff000000 | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar.Light.Title` | light | #ff000000 | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar.Subtitle` | - | #ffffffff | ? | - | unknown |
| `AppTheme.Material.Color.ActionBar.Title` | - | #ffffffff | ? | - | unknown |
| `AppTheme.Widget.FastScroll` | - | ? | ? | - | unknown |
| `AppTheme.Widget.Light.FastScroll` | light | ? | ? | - | unknown |
| `FolderTheme` | - | ? | ? | - | unknown |
| `FolderTheme.Amber` | - | ? | ? | - | unknown |
| `FolderTheme.Blue` | - | ? | ? | - | unknown |
| `FolderTheme.BlueGrey` | - | ? | ? | - | unknown |
| `FolderTheme.Brown` | - | ? | ? | - | unknown |
| `FolderTheme.Cyan` | - | ? | ? | - | unknown |
| `FolderTheme.DarkGrey` | dark | ? | ? | - | unknown |
| `FolderTheme.DeepOrange` | - | ? | ? | - | unknown |
| `FolderTheme.DeepPurple` | - | ? | ? | - | unknown |
| `FolderTheme.Dynamic` | dynamic-color | ? | ? | - | unknown |
| `FolderTheme.Green` | - | ? | ? | - | unknown |
| `FolderTheme.Grey` | - | ? | ? | - | unknown |
| `FolderTheme.Indigo` | - | ? | ? | - | unknown |
| `FolderTheme.LightBlue` | light | ? | ? | - | unknown |
| `FolderTheme.LightGreen` | light | ? | ? | - | unknown |
| `FolderTheme.Lime` | - | ? | ? | - | unknown |
| `FolderTheme.Orange` | - | ? | ? | - | unknown |
| `FolderTheme.Pink` | - | ? | ? | - | unknown |
| `FolderTheme.Purple` | - | ? | ? | - | unknown |
| `FolderTheme.Red` | - | ? | ? | - | unknown |
| `FolderTheme.Teal` | - | ? | ? | - | unknown |
| `FolderTheme.Yellow` | - | ? | ? | - | unknown |
| `Theme.Transparent` | - | ? | #00000000 | - | unknown |

## Deepest layouts

- `res/layout/dlg_select_file_land.xml` depth=5 views=21 weighted=2
- `res/layout-v17/dlg_select_file_land.xml` depth=5 views=21 weighted=2
- `res/layout/dlg_info.xml` depth=4 views=54 weighted=14
- `res/layout/dlg_info_land.xml` depth=4 views=54 weighted=15
- `res/layout-v17/dlg_info.xml` depth=4 views=54 weighted=14
- `res/layout-v17/dlg_info_land.xml` depth=4 views=54 weighted=15
- `res/layout/dlg_permissions.xml` depth=4 views=36 weighted=2
- `res/layout-v17/dlg_permissions.xml` depth=4 views=36 weighted=2
- `res/layout/dlg_about.xml` depth=4 views=34 weighted=0
- `res/layout-v17/dlg_about.xml` depth=4 views=34 weighted=0
- `res/layout/menu_view_mode.xml` depth=4 views=25 weighted=0
- `res/layout/dlg_select_file.xml` depth=4 views=18 weighted=0
- `res/layout-v17/dlg_select_file.xml` depth=4 views=18 weighted=0
- `res/layout/dlg_ask_overwrite.xml` depth=4 views=14 weighted=1
- `res/layout/dlg_ask_overwrite_land.xml` depth=4 views=14 weighted=1
- `res/layout-v17/dlg_ask_overwrite.xml` depth=4 views=14 weighted=1
- `res/layout-v17/dlg_ask_overwrite_land.xml` depth=4 views=14 weighted=1
- `res/layout-v22/dlg_ask_overwrite.xml` depth=4 views=14 weighted=1
- `res/layout-v22/dlg_ask_overwrite_land.xml` depth=4 views=14 weighted=1
- `res/layout-v21/dlg_open_as.xml` depth=4 views=11 weighted=0

## Lowest translation coverage

- -ug: 69.2% (292/422), missing 130
- -ky: 69.7% (294/422), missing 128
- -sr: 82.2% (347/422), missing 75
- -fr: 83.6% (353/422), missing 69
- -el: 84.8% (358/422), missing 64
- -fa: 84.8% (358/422), missing 64
- -lt: 85.8% (362/422), missing 60
- -bg: 86.7% (366/422), missing 56
- -da: 86.7% (366/422), missing 56
- -zh-rTW: 89.6% (378/422), missing 44
- -uz: 90.3% (381/422), missing 41
- -uk: 90.5% (382/422), missing 40
- -ko: 90.8% (383/422), missing 39
- -ja: 91.0% (384/422), missing 38
- -th-rTH: 91.2% (385/422), missing 37
