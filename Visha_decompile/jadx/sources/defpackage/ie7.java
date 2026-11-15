package defpackage;

import android.util.Log;

public abstract class ie7 {
    public static boolean a = true;
    public static String b = "OkGo";

    public static void a(Throwable th) {
        if (!a || th == null) {
            return;
        }
        th.printStackTrace();
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.v(str, str2);
        }
    }

    public static void c(String str) {
        d(b, str);
    }

    public static void d(String str, String str2) {
        if (a) {
            Log.w(str, str2);
        }
    }
}
