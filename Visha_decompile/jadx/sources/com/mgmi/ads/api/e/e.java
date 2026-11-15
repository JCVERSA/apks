package com.mgmi.ads.api.e;

public class e {
    private static e a;
    private boolean b = false;

    public static e a() {
        if (a == null) {
            synchronized (i.class) {
                try {
                    if (a == null) {
                        a = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public boolean b() {
        return this.b;
    }

    public void a(boolean z) {
        this.b = z;
    }
}
