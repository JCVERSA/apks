package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;

public final class RunnableC2751o0 implements Runnable {
    public final C2776p0 a;

    public RunnableC2751o0(C2776p0 c2776p0) {
        this.a = c2776p0;
    }

    @Override
    public final void run() {
        C2879t4.i().c.a().executeDelayed(new RunnableC2752o1(this.a.a), TimeUnit.SECONDS.toMillis(5L));
    }
}
