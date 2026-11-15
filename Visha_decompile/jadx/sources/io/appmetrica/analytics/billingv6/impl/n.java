package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class n extends SafeRunnable {
    public final p a;
    public final k b;

    public n(p pVar, k kVar) {
        this.a = pVar;
        this.b = kVar;
    }

    @Override
    public final void runSafety() {
        this.a.e.a(this.b);
    }
}
