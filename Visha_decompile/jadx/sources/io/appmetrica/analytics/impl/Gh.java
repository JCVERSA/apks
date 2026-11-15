package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;

public final class Gh implements Runnable {
    public final Revenue a;
    public final Yh b;

    public Gh(Yh yh, Revenue revenue) {
        this.b = yh;
        this.a = revenue;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportRevenue(this.a);
    }
}
