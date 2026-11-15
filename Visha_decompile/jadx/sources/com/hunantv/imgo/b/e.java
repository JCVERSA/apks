package com.hunantv.imgo.b;

public class e {
    private static e b;
    private static d c;
    private boolean a = a().a;

    private e() {
    }

    public static void a(d dVar) {
        if (c == null) {
            synchronized (d.class) {
                try {
                    if (c == null) {
                        if (dVar == null) {
                            dVar = d.a().a();
                        }
                        c = dVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static e c() {
        if (b == null) {
            synchronized (e.class) {
                try {
                    if (b == null) {
                        b = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    public boolean b() {
        return this.a;
    }

    public static d a() {
        a((d) null);
        return c;
    }

    public void a(boolean z) {
        this.a = z || "Wifi".equalsIgnoreCase(com.hunantv.imgo.net.c.d());
    }
}
