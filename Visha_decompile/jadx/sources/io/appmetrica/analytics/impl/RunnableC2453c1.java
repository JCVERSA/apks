package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;

public final class RunnableC2453c1 implements Runnable {
    public final AnrListener a;
    public final C2702m1 b;

    public RunnableC2453c1(C2702m1 c2702m1, AnrListener anrListener) {
        this.b = c2702m1;
        this.a = anrListener;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).a(this.a);
    }
}
