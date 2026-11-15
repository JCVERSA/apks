package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

public final class Ph implements Runnable {
    public final AdRevenue a;
    public final boolean b;
    public final Yh c;

    public Ph(Yh yh, AdRevenue adRevenue, boolean z) {
        this.c = yh;
        this.a = adRevenue;
        this.b = z;
    }

    @Override
    public final void run() {
        Yh yh = this.c;
        Yh.a(yh.a, yh.d, yh.e).reportAdRevenue(this.a, this.b);
    }
}
