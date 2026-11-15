package io.appmetrica.analytics.billingv6.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class f extends SafeRunnable {
    public final g a;

    public f(g gVar) {
        this.a = gVar;
    }

    @Override
    public final void runSafety() {
        this.a.a.endConnection();
    }
}
