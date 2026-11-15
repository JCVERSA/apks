package io.appmetrica.analytics.impl;

public final class M0 implements Runnable {
    public final String a;
    public final C2702m1 b;

    public M0(C2702m1 c2702m1, String str) {
        this.b = c2702m1;
        this.a = str;
    }

    @Override
    public final void run() {
        C2801q0 c2801q0 = this.b.a;
        String str = this.a;
        c2801q0.getClass();
        C2776p0.c().setUserProfileID(str);
    }
}
