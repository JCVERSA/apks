package io.appmetrica.analytics.impl;

public final class W0 implements Runnable {
    public final String a;
    public final String b;
    public final C2702m1 c;

    public W0(C2702m1 c2702m1, String str, String str2) {
        this.c = c2702m1;
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void run() {
        C2702m1.a(this.c).b(this.a, this.b);
    }
}
