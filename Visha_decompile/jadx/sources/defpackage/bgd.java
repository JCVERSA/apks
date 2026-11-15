package defpackage;

import java.lang.ref.WeakReference;

public abstract class bgd {
    public static Class a;
    public static WeakReference b;

    public static void a() {
        if (a == null) {
            a = cjd.class;
        }
    }

    public static Class b() {
        if (a == null) {
            a();
        }
        return a;
    }

    public static hhd c() {
        try {
            WeakReference weakReference = b;
            if (weakReference == null) {
                ubc.a(b().newInstance());
                b = new WeakReference(null);
            } else {
                ubc.a(weakReference.get());
                if (b() != null) {
                    ubc.a(b().newInstance());
                    b = new WeakReference(null);
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
