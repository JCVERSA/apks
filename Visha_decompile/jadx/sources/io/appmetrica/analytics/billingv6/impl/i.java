package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class i extends SafeRunnable {
    public final k a;
    public final r b;

    public i(k kVar, r rVar) {
        this.a = kVar;
        this.b = rVar;
    }

    @Override
    public final void runSafety() {
        this.a.f.a(this.b);
    }
}
