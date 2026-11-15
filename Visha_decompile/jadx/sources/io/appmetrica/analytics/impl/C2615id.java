package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

public final class C2615id extends SafeRunnable {
    public final C2739nd a;
    public final AdRevenue b;
    public final boolean c;

    public C2615id(C2739nd c2739nd, AdRevenue adRevenue, boolean z) {
        this.a = c2739nd;
        this.b = adRevenue;
        this.c = z;
    }

    @Override
    public final void runSafety() {
        C2739nd.a(this.a).reportAdRevenue(this.b, this.c);
    }
}
