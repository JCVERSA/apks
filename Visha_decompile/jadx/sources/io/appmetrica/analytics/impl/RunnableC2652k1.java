package io.appmetrica.analytics.impl;

public final class RunnableC2652k1 implements Runnable {
    public final String a;
    public final String b;
    public final Throwable c;
    public final C2702m1 d;

    public RunnableC2652k1(C2702m1 c2702m1, String str, String str2, Throwable th) {
        this.d = c2702m1;
        this.a = str;
        this.b = str2;
        this.c = th;
    }

    @Override
    public final void run() {
        C2702m1.a(this.d).reportError(this.a, this.b, this.c);
    }
}
