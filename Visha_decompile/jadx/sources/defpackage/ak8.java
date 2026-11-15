package defpackage;

public final class ak8 {
    public static final ak8 a = new ak8();
    public static volatile String b;
    public static volatile boolean c;

    public final String a() {
        return b;
    }

    public final boolean b() {
        return c;
    }

    public final void c(String str) {
        if (c) {
            return;
        }
        synchronized (this) {
            if (c) {
                return;
            }
            b = str;
            c = true;
            zfb zfbVar = zfb.a;
        }
    }
}
