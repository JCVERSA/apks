package defpackage;

import android.text.TextUtils;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public abstract class ge {
    public static int a = 0;
    public static String b = "";
    public static boolean c = false;
    public static boolean d = false;

    public static String a() {
        return b;
    }

    public static int b() {
        return a;
    }

    public static boolean c() {
        return b.contains("gp");
    }

    public static boolean d() {
        return TextUtils.equals(b, "plamplay");
    }

    public static boolean e() {
        Log.d("AppBuildConfig", "isGPTest " + c + StringUtils.COMMA + a);
        return c;
    }

    public static boolean f() {
        return d;
    }

    public static boolean g() {
        return a > 50110;
    }

    public static void h(boolean z) {
        d = z;
    }

    public static void i(String str) {
        Log.d("AppBuildConfig", "setFlavor " + str);
        b = str;
        boolean zContains = str.contains("_test");
        c = zContains;
        oa1.i(zContains);
    }

    public static void j(int i) {
        Log.d("AppBuildConfig", "setVersionCode " + i);
        a = i;
    }
}
