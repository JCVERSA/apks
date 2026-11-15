package defpackage;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.transsion.widgetslib.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class j43 {
    public static final a a = new a(null);
    public static final HashMap b;
    public static final int[] c;
    public static final int[] d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, boolean z, int i, int i2, int i3, boolean z2) {
            y45.j(context, "context");
            if ((z && !olb.F) || ((olb.F && olb.M < i2) || z2)) {
                context.getTheme().applyStyle(i, true);
                return;
            }
            bq5.c("DynamicColorTool", "gpMarket = " + z);
            if (b(context)) {
                int integer = context.getResources().getInteger(R.integer.os_theme_pkg_version);
                bq5.c("DynamicColorTool", "adaptDyColor: themePkgVersion = " + integer);
                if (integer <= 1610) {
                    context.getTheme().applyStyle(R.style.OSCompileBgStyle, true);
                }
            }
            if (c(context)) {
                context.getTheme().applyStyle(R.style.OSThemePackage, true);
                return;
            }
            boolean zI = i(context);
            bq5.p("DynamicColorTool", "adaptDyColor: dyOpen = " + zI + " DY_DEFAULT_STYLE_MAP = " + j43.b.size());
            if (!zI) {
                context.getTheme().applyStyle(i, true);
                return;
            }
            boolean zG = g(i3);
            bq5.p("DynamicColorTool", "adaptDyColor: requireDy = " + zG);
            if (zG) {
                int iF = f(context);
                bq5.p("DynamicColorTool", "adaptDyColor: brandColorIndexFromJson " + iF);
                if (d(iF)) {
                    context.getTheme().applyStyle(j43.c[iF], true);
                }
            }
        }

        public final boolean b(Context context) {
            y45.j(context, "context");
            return context.getResources().getBoolean(R.bool.os_custom_theme);
        }

        public final boolean c(Context context) {
            y45.j(context, "context");
            boolean zB = b(context);
            int i = Settings.System.getInt(context.getContentResolver(), "os_common_control_current_color", 1);
            boolean z = context.getResources().getBoolean(R.bool.os_custom_platform_color);
            bq5.c("DynamicColorTool", "osCustomTheme = " + zB + " osCustomPlatformColor = " + z + " transCurrentColor = " + i + " packageName = " + context.getPackageName());
            return zB && z && i == 1;
        }

        public final boolean d(int i) {
            return i > -1 && i < j43.b.size();
        }

        public final boolean e(int i) {
            return i > -1 && i < j43.d.length;
        }

        public final int f(Context context) {
            String string = Settings.System.getString(context.getContentResolver(), "trans_dynamic_applied_json");
            bq5.p("DynamicColorTool", "adaptDyColor transDynamicAppliedJsonStr: " + string);
            if (TextUtils.isEmpty(string)) {
                return -1;
            }
            try {
                JSONObject jSONObject = new JSONObject(string);
                if (jSONObject.has("android.theme.customization.trans_color_type")) {
                    String strOptString = jSONObject.optString("android.theme.customization.trans_color_type");
                    if (!TextUtils.isEmpty(strOptString)) {
                        y45.i(strOptString, "colorSource");
                        if (j1a.X(strOptString, "PRESET_COLOR", false, 2, null) && jSONObject.has("android.theme.customization.preset_name")) {
                            String strOptString2 = jSONObject.optString("android.theme.customization.preset_name");
                            if (!TextUtils.isEmpty(strOptString2) && j43.b.containsKey(strOptString2)) {
                                Object obj = j43.b.get(strOptString2);
                                y45.g(obj);
                                int iIntValue = ((Number) obj).intValue();
                                bq5.p("DynamicColorTool", "adaptDyColor: dyType = " + iIntValue);
                                return iIntValue;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                System.out.print(e.getStackTrace());
            }
            return -1;
        }

        public final boolean g(int i) {
            bq5.p("DynamicColorTool", "adaptDyColor getRequireDy: osType = " + olb.x);
            if (olb.c && (i & 1) != 0) {
                bq5.p("DynamicColorTool", "adaptDyColor getRequireDy: nonDyOS = HIOS");
                return false;
            }
            if (olb.d && (i & 2) != 0) {
                bq5.p("DynamicColorTool", "adaptDyColor getRequireDy: nonDyOS = XOS");
                return false;
            }
            if (!olb.e || (i & 4) == 0) {
                bq5.p("DynamicColorTool", "adaptDyColor getRequireDy: nonDyOS = NONE");
                return true;
            }
            bq5.p("DynamicColorTool", "adaptDyColor getRequireDy: nonDyOS = ITEL");
            return false;
        }

        public final int h(Context context) {
            y45.j(context, "context");
            if (c(context)) {
                return R.style.OSThemePackageDialog;
            }
            boolean zI = i(context);
            int iF = zI ? f(context) : -1;
            int i = e(iF) ? j43.d[iF] : R.style.OS_Dialog_Alert_Base_xos_dy;
            bq5.p("DynamicColorTool", "adaptDyColor getDialogXosDiffStyle: dyOpen = " + zI + " dyType = " + iF + " dyStyle = " + i);
            return i;
        }

        public final boolean i(Context context) {
            int i;
            if (!olb.H) {
                return false;
            }
            try {
                i = Settings.System.getInt(context.getContentResolver(), "dynamic_color_state", 1);
            } catch (Exception e) {
                bq5.g("DynamicColorTool", "isDyOpen error: " + e.getMessage());
                i = 0;
            }
            bq5.p("DynamicColorTool", "isDyOpen: " + i);
            return i != 0;
        }

        public a() {
        }
    }

    static {
        HashMap map = new HashMap();
        b = map;
        c = new int[]{R.style.OSBrandBlueDy, R.style.OSBrandGreenDy, R.style.OSTrendyDy, R.style.OSElegantDy, R.style.OSPovaDy};
        d = new int[]{R.style.OS_Dialog_Alert_Base_Blue_dy, R.style.OS_Dialog_Alert_Base_Green_dy, R.style.OS_Dialog_Alert_Base_Trendy_dy, R.style.OS_Dialog_Alert_Base_Elegant_dy, R.style.OS_Dialog_Alert_Base_Pova_dy};
        map.put("preset_brand", 0);
        map.put("preset_brand_green", 1);
        map.put("preset_trendy", 2);
        map.put("preset_elegant", 3);
        map.put("preset_pova", 4);
    }

    public static final void d(Context context, boolean z, int i, int i2, int i3, boolean z2) {
        a.a(context, z, i, i2, i3, z2);
    }

    public static final int e(Context context) {
        return a.h(context);
    }
}
