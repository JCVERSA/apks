package io.appmetrica.analytics.impl;

public final class Kh implements Runnable {
    public final boolean a;
    public final Yh b;

    public Kh(Yh yh, boolean z) {
        this.b = yh;
        this.a = z;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).setDataSendingEnabled(this.a);
    }
}
