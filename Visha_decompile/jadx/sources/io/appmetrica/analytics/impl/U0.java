package io.appmetrica.analytics.impl;

public final class U0 implements Runnable {
    public final String a;
    public final String b;
    public final C2702m1 c;

    public U0(C2702m1 c2702m1, String str, String str2) {
        this.c = c2702m1;
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void run() {
        C2801q0 c2801q0 = this.c.a;
        String str = this.a;
        String str2 = this.b;
        c2801q0.getClass();
        C2776p0.c().a(str, str2);
    }
}
