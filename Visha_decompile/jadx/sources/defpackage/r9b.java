package defpackage;

import android.util.Log;

public abstract class r9b {
    public static String a = "Tray";
    public static boolean b = Log.isLoggable("Tray", 2);

    public static void a(String str) {
        if (str == null) {
            str = "";
        }
        Log.d(a, str);
    }

    public static void b(String str) {
        if (b) {
            if (str == null) {
                str = "";
            }
            Log.v(a, str);
        }
    }

    public static void c(String str) {
        if (str == null) {
            str = "";
        }
        Log.w(a, str);
    }
}
