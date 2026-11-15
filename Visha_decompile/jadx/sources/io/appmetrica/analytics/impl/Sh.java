package io.appmetrica.analytics.impl;

public final class Sh implements Runnable {
    public final S a;
    public final Yh b;

    public Sh(Yh yh, S s) {
        this.b = yh;
        this.a = s;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).a(this.a);
    }
}
