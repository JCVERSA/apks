package io.appmetrica.analytics.impl;

public final class Ah implements Runnable {
    public final String a;
    public final String b;
    public final Throwable c;
    public final Yh d;

    public Ah(Yh yh, String str, String str2, Throwable th) {
        this.d = yh;
        this.a = str;
        this.b = str2;
        this.c = th;
    }

    @Override
    public final void run() {
        Yh yh = this.d;
        Yh.a(yh.a, yh.d, yh.e).reportError(this.a, this.b, this.c);
    }
}
