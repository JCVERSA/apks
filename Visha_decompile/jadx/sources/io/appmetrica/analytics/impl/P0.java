package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;

public final class P0 implements Runnable {
    public final Revenue a;
    public final C2702m1 b;

    public P0(C2702m1 c2702m1, Revenue revenue) {
        this.b = c2702m1;
        this.a = revenue;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).reportRevenue(this.a);
    }
}
