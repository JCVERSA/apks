package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.b;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public abstract class pp3 {
    public static final boolean A;
    public static final boolean B;
    public static final boolean C;
    public static final boolean D;
    public static final boolean E;
    public static final boolean F;
    public static final boolean G;
    public static final boolean H;
    public static boolean I;
    public static boolean J;
    public static String K;
    public static boolean L;
    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static int d;
    public static int e;
    public static int f;
    public static int g;
    public static int h;
    public static int i;
    public static final boolean j;
    public static final boolean k;
    public static int l;
    public static int m;
    public static int n;
    public static int o;
    public static boolean p;
    public static boolean q;
    public static int r;
    public static int s;
    public static final boolean t;
    public static final boolean u;
    public static final boolean v;
    public static boolean w;
    public static boolean x;
    public static boolean y;
    public static final boolean z;

    static {
        int i2 = Build.VERSION.SDK_INT;
        a = i2 > 29;
        boolean zE = ydc.e();
        b = zE;
        c = zE;
        d = -1;
        e = -1;
        f = -1;
        g = -1;
        h = -1;
        i = -1;
        j = i2 > 29;
        k = !zE || (zE && !("X6739".equalsIgnoreCase(a()) && "1".equals(maa.d("ro.os_app_uninstall_support"))));
        l = -1;
        m = -1;
        n = -1;
        o = -1;
        p = !zE;
        q = !zE;
        r = -1;
        s = -1;
        t = i2 > 29;
        u = k() || maa.a("persist.tr_audio.dolby.feature.support", false) || maa.a("ro.dolby.atmos.support", false);
        v = maa.a("ro.tr_colorspace.p3.feature.support", false) || "1".equals(maa.d("ro.tr_colorspace.p3.feature.support"));
        w = ydc.e();
        x = !ydc.e();
        y = !ydc.e();
        z = !ydc.e();
        A = !ydc.e();
        B = !ydc.e();
        C = zE;
        D = !ydc.e();
        E = !ydc.e();
        F = !zE;
        G = i2 >= 34;
        H = m() || "1".equals(maa.d("ro.os_hide_gesture_navigation_bar_support"));
        I = true;
        J = false;
        L = true;
    }

    public static String a() {
        return ga2.a();
    }

    public static String b() {
        String strF = f("ro.tranos.version");
        return TextUtils.isEmpty(strF) ? f("ro.os_product.version") : strF;
    }

    public static String c() {
        String str = K;
        if (str != null) {
            return str;
        }
        try {
            if (w()) {
                K = "vlc";
            } else if (j()) {
                K = "bsp";
            } else {
                K = "system";
            }
        } catch (Exception e2) {
            Log.d("FeatureUtils", "getPlayerKernelName Exception " + e2.toString());
        }
        Log.d("FeatureUtils", "getPlayerKernelName " + K);
        return K;
    }

    public static String d() {
        if (w()) {
            return "vlc";
        }
        return j() ? "bsp" : "system";
    }

    public static boolean e(Context context) {
        if (!J) {
            I = w6c.c(context, "video_short_list_mode_open", true);
            J = true;
        }
        return I;
    }

    public static String f(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str2 = (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            Log.e("FeatureUtils", "getSystemProperties Exception " + e2.getMessage());
            str2 = null;
        }
        return str2 == null ? "" : str2;
    }

    public static int g(Context context) {
        int i2 = l;
        if (i2 != -1) {
            return i2;
        }
        Log.d("FeatureUtils", "getWaterfallLeftEdgeSize");
        try {
            l = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("waterfall_display_left_edge_size", "dimen", ConstantDeviceInfo.APP_PLATFORM));
        } catch (Exception e2) {
            Log.d("FeatureUtils", "getWaterfallLeftEdgeSize Exception " + e2);
        }
        return l;
    }

    public static int h(Context context) {
        int i2 = m;
        if (i2 != -1) {
            return i2;
        }
        Log.d("FeatureUtils", "getWaterfallRightEdgeSize");
        try {
            m = context.getResources().getDimensionPixelSize(context.getResources().getIdentifier("waterfall_display_right_edge_size", "dimen", ConstantDeviceInfo.APP_PLATFORM));
        } catch (Exception e2) {
            Log.d("FeatureUtils", "getWaterfallRightEdgeSize Exception " + e2);
        }
        return m;
    }

    public static boolean i() {
        return u() && Build.VERSION.SDK_INT >= 31;
    }

    public static boolean j() {
        return true;
    }

    public static boolean k() {
        String strD = maa.d("ro.tr_audio.sound_effect.type");
        if (TextUtils.isEmpty(strD)) {
            return false;
        }
        return "dolby".equals(strD.trim());
    }

    public static boolean l() {
        if (e == -1) {
            e = maa.b("ro.os_flip_screen_support", 0);
            StringBuilder sb = new StringBuilder();
            sb.append("isFlipScreenSupport:");
            sb.append(1 == e);
            Log.e("FeatureUtils", sb.toString());
        }
        return 1 == e;
    }

    public static boolean m() {
        if (d == -1) {
            int iB = maa.b("ro.os_foldable_screen_support", 0);
            d = iB;
            if (iB != 1) {
                int iB2 = maa.b("ro.os_flip_screen_support", 0);
                d = iB2;
                e = iB2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("isFoldableScreenSupport:");
            sb.append(1 == d);
            Log.e("FeatureUtils", sb.toString());
        }
        return 1 == d;
    }

    public static boolean n() {
        return !r0a.g(b.a()) && b.a().equalsIgnoreCase("com.transsion.vishaplayerhd");
    }

    public static boolean o() {
        int i2 = n;
        if (i2 != -1) {
            return i2 == 1;
        }
        if ("1".equals(maa.d("ro.tr_xhide.quick_hide.feature.support"))) {
            n = 1;
            o = 1;
            return true;
        }
        o = 0;
        if ("1".equals(maa.d("ro.os_quick_hide_support"))) {
            n = 1;
            return true;
        }
        n = 0;
        return false;
    }

    public static boolean p() {
        return true;
    }

    public static boolean q() {
        return true;
    }

    public static boolean r() {
        if (i == -1) {
            i = w() ? 1 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("isSupportDualSubtitle:");
            sb.append(1 == i);
            Log.e("FeatureUtils", sb.toString());
        }
        return 1 == i;
    }

    public static boolean s() {
        if (s == -1) {
            s = (!b || u()) ? 1 : 0;
        }
        return s == 1;
    }

    public static boolean t() {
        if (g == -1) {
            g = (j() || w()) ? 1 : 0;
            StringBuilder sb = new StringBuilder();
            sb.append("isSupportSubtitle:");
            sb.append(1 == g);
            Log.e("FeatureUtils", sb.toString());
        }
        return 1 == g;
    }

    public static boolean u() {
        if (r == -1) {
            r = se.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture") ? 1 : 0;
        }
        return r == 1;
    }

    public static boolean v() {
        if (o == -1) {
            o();
        }
        return o == 1;
    }

    public static boolean w() {
        return false;
    }

    public static boolean x(Context context) {
        return olb.w0(context);
    }

    public static boolean y(Context context) {
        if (h == -1) {
            if (context.getPackageManager().hasSystemFeature("android.hardware.telephony")) {
                h = 0;
            } else {
                h = 1;
            }
        }
        return 1 == h;
    }

    public static void z(boolean z2) {
        if (j()) {
            return;
        }
        Log.e("FeatureUtils", "setSupportBspPlayer:" + z2);
        f = z2 ? 1 : 0;
    }
}
