package defpackage;

import android.util.Log;

public abstract class rq5 {
    public static boolean a = false;
    public static String b = "MMAChinaSDK";

    public static void a(String str) {
        if (a) {
            Log.d(b, str);
        }
    }

    public static void b(String str) {
        if (a) {
            Log.e(b, str);
        }
    }

    public static void c(String str) {
        if (a) {
            Log.i(b, str);
        }
    }

    public static void d(String str) {
        if (a) {
            Log.w(b, str);
        }
    }
}
