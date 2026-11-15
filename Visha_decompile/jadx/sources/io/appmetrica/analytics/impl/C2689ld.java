package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2689ld extends SafeRunnable {
    public final C2739nd a;
    public final boolean b;

    public C2689ld(C2739nd c2739nd, boolean z) {
        this.a = c2739nd;
        this.b = z;
    }

    @Override
    public final void runSafety() {
        C2739nd.a(this.a).b(this.b);
    }
}
