package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

public final class Hh implements Runnable {
    public final AdRevenue a;
    public final Yh b;

    public Hh(Yh yh, AdRevenue adRevenue) {
        this.b = yh;
        this.a = adRevenue;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportAdRevenue(this.a);
    }
}
