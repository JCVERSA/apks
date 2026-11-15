package io.appmetrica.analytics.impl;

public final class Bh implements Runnable {
    public final Throwable a;
    public final Yh b;

    public Bh(Yh yh, Throwable th) {
        this.b = yh;
        this.a = th;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportUnhandledException(this.a);
    }
}
