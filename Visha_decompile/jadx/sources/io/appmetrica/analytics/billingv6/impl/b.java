package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class b extends SafeRunnable {
    public final d a;
    public final p b;

    public b(d dVar, p pVar) {
        this.a = dVar;
        this.b = pVar;
    }

    @Override
    public final void runSafety() {
        this.a.d.a(this.b);
    }
}
