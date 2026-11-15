package io.appmetrica.analytics.impl;

public final class RunnableC2627j1 implements Runnable {
    public final String a;
    public final Throwable b;
    public final C2702m1 c;

    public RunnableC2627j1(C2702m1 c2702m1, String str, Throwable th) {
        this.c = c2702m1;
        this.a = str;
        this.b = th;
    }

    @Override
    public final void run() {
        C2702m1.a(this.c).reportError(this.a, this.b);
    }
}
