package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

public final class C2969wj implements Xa {
    public final AdRevenue a;
    public final boolean b;

    public C2969wj(AdRevenue adRevenue, boolean z) {
        this.a = adRevenue;
        this.b = z;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportAdRevenue(this.a, this.b);
    }
}
