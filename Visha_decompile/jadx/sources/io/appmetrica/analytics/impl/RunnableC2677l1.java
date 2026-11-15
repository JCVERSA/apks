package io.appmetrica.analytics.impl;

public final class RunnableC2677l1 implements Runnable {
    public final Throwable a;
    public final C2702m1 b;

    public RunnableC2677l1(C2702m1 c2702m1, Throwable th) {
        this.b = c2702m1;
        this.a = th;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportUnhandledException(this.a);
    }
}
