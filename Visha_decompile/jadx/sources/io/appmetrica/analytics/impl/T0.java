package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkListener;

public final class T0 implements Runnable {
    public final DeferredDeeplinkListener a;
    public final C2702m1 b;

    public T0(C2702m1 c2702m1, DeferredDeeplinkListener deferredDeeplinkListener) {
        this.b = c2702m1;
        this.a = deferredDeeplinkListener;
    }

    @Override
    public final void run() {
        this.b.a.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        c2776p0.f().a(this.a);
    }
}
