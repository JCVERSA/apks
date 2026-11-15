package defpackage;

import android.app.ActivityManager;
import android.util.Log;

public abstract class oa1 {
    public static Boolean a;
    public static boolean b;
    public static long c;
    public static long d;

    public static int a() {
        return d() ? 1200 : 500;
    }

    public static boolean b(String str, long j, long j2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        Log.i(str, "ingoreClickEvent 22 interval:" + jCurrentTimeMillis);
        return Math.abs(jCurrentTimeMillis) < j2;
    }

    public static boolean c() {
        return d() && Math.abs(System.currentTimeMillis() - d) < 60000;
    }

    public static boolean d() {
        if (b) {
            return false;
        }
        return g();
    }

    public static int e() {
        return d() ? 150 : Integer.MAX_VALUE;
    }

    public static int f() {
        return d() ? 20 : Integer.MAX_VALUE;
    }

    public static boolean g() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Boolean bool = a;
            if (bool == null) {
                a = Boolean.valueOf(ActivityManager.isUserAMonkey());
                c = jCurrentTimeMillis;
            } else if (bool.booleanValue() && jCurrentTimeMillis - c > 30000) {
                c = jCurrentTimeMillis;
                a = Boolean.valueOf(ActivityManager.isUserAMonkey());
            }
            return Boolean.TRUE.equals(a);
        } catch (Exception unused) {
            return Boolean.TRUE.equals(a);
        }
    }

    public static void h() {
        d = System.currentTimeMillis();
    }

    public static void i(boolean z) {
        b = z;
    }

    public static boolean j() {
        return g();
    }
}
