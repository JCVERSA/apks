package com.mbridge.msdk.foundation.same;

public class b {

    private static volatile b f34523b;

    private Boolean f34524a = null;

    private b() {
    }

    public static b b() {
        if (f34523b == null) {
            synchronized (b.class) {
                try {
                    if (f34523b == null) {
                        f34523b = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34523b;
    }

    public Boolean a() {
        return this.f34524a;
    }
}
