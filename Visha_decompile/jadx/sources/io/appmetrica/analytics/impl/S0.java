package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkParametersListener;

public final class S0 implements Runnable {
    public final DeferredDeeplinkParametersListener a;
    public final C2702m1 b;

    public S0(C2702m1 c2702m1, DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.b = c2702m1;
        this.a = deferredDeeplinkParametersListener;
    }

    @Override
    public final void run() {
        this.b.a.getClass();
        C2776p0 c2776p0 = C2776p0.e;
        c2776p0.f().a(this.a);
    }
}
