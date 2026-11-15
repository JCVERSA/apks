package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

public final class Q0 implements Runnable {
    public final AdRevenue a;
    public final C2702m1 b;

    public Q0(C2702m1 c2702m1, AdRevenue adRevenue) {
        this.b = c2702m1;
        this.a = adRevenue;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportAdRevenue(this.a);
    }
}
