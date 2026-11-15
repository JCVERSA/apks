package io.appmetrica.analytics.impl;

public final class Wh implements Runnable {
    public final String a;
    public final Yh b;

    public Wh(Yh yh, String str) {
        this.b = yh;
        this.a = str;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportEvent(this.a);
    }
}
