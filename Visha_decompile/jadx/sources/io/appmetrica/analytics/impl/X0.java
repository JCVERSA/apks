package io.appmetrica.analytics.impl;

public final class X0 implements Runnable {
    public final String a;
    public final C2702m1 b;

    public X0(C2702m1 c2702m1, String str) {
        this.b = c2702m1;
        this.a = str;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).a(this.a);
    }
}
