package defpackage;

import mgtv.qt.b;
import mgtv.qt.c;

public abstract class s3d {
    public static String a = "";
    public static boolean b = false;
    public static long c;
    public static long d;

    public static synchronized void b() {
        if (c.k == null) {
            return;
        }
        if (b) {
            return;
        }
        d = System.currentTimeMillis();
        try {
            b = true;
            c.i(c.k, new s4d(d, "init", "-1"));
            c = 0L;
            c.k.registerActivityLifecycleCallbacks(new b());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
