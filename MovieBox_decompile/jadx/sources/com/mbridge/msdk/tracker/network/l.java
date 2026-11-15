package com.mbridge.msdk.tracker.network;

public class l {

    private static volatile l f37750b;

    private u f37751a;

    private l() {
    }

    public static l a() {
        if (f37750b == null) {
            synchronized (l.class) {
                try {
                    if (f37750b == null) {
                        f37750b = new l();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f37750b;
    }

    public u b() {
        if (this.f37751a == null) {
            u uVarA = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(new com.mbridge.msdk.tracker.network.toolbox.m()), null, 10, new com.mbridge.msdk.tracker.network.toolbox.l());
            this.f37751a = uVarA;
            uVarA.b();
        }
        return this.f37751a;
    }
}
