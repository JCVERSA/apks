package defpackage;

import android.os.Trace;

public abstract class sua {
    public static void a(String str) {
        if (blb.a >= 18) {
            b(str);
        }
    }

    public static void b(String str) {
        Trace.beginSection(str);
    }

    public static void c() {
        if (blb.a >= 18) {
            d();
        }
    }

    public static void d() {
        Trace.endSection();
    }
}
