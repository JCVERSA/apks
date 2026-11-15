package io.appmetrica.analytics.impl;

public final class RunnableC3042zh implements Runnable {
    public final String a;
    public final Throwable b;
    public final Yh c;

    public RunnableC3042zh(Yh yh, String str, Throwable th) {
        this.c = yh;
        this.a = str;
        this.b = th;
    }

    @Override
    public final void run() {
        Yh yh = this.c;
        Yh.a(yh.a, yh.d, yh.e).reportError(this.a, this.b);
    }
}
