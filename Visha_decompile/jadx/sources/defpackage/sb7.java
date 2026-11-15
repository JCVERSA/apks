package defpackage;

import android.os.Build;
import android.text.TextUtils;
import com.transsion.hubsdk.api.os.TranSystemProperties;

public abstract class sb7 {
    public static String a() {
        return g() ? e("ro.build.version.emui") : "";
    }

    public static String b() {
        return e("ro.build.display.id");
    }

    public static String c() {
        return k() ? e("ro.build.display.id") : "";
    }

    public static String d() {
        return p() ? e("ro.miui.ui.version.name") : "";
    }

    public static String e(String str) {
        return TranSystemProperties.get(str);
    }

    public static boolean f() {
        return !TextUtils.isEmpty(e("ro.build.version.opporom"));
    }

    public static boolean g() {
        return !TextUtils.isEmpty(e("ro.build.version.emui"));
    }

    public static boolean h() {
        return a().contains("EmotionUI_3.0");
    }

    public static boolean i() {
        String strA = a();
        return "EmotionUI 3".equals(strA) || strA.contains("EmotionUI_3.1");
    }

    public static boolean j() {
        return h() || i();
    }

    public static boolean k() {
        return b().toLowerCase().contains("flyme");
    }

    public static boolean l() {
        String strC = c();
        if (strC.isEmpty()) {
            return false;
        }
        try {
            return (strC.toLowerCase().contains("os") ? Integer.parseInt(strC.substring(9, 10)) : Integer.parseInt(strC.substring(6, 7))) >= 4;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean m() {
        return !TextUtils.isEmpty(e("ro.vivo.os.version"));
    }

    public static boolean n() {
        return Build.MANUFACTURER.toLowerCase().contains("huawei");
    }

    public static boolean o() {
        return Build.MANUFACTURER.toLowerCase().contains("lenovo");
    }

    public static boolean p() {
        return !TextUtils.isEmpty(e("ro.miui.ui.version.name"));
    }

    public static boolean q() {
        String strD = d();
        if (strD.isEmpty()) {
            return false;
        }
        try {
            return Integer.parseInt(strD.substring(1)) >= 6;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean r() {
        return Build.MANUFACTURER.toLowerCase().contains("meizu");
    }

    public static boolean s() {
        return Build.MANUFACTURER.toLowerCase().contains("oppo");
    }

    public static boolean t() {
        return Build.MANUFACTURER.toLowerCase().contains("samsung");
    }

    public static boolean u() {
        return Build.MANUFACTURER.toLowerCase().contains("vivo");
    }

    public static boolean v() {
        return Build.MANUFACTURER.toLowerCase().contains("xiaomi");
    }
}
