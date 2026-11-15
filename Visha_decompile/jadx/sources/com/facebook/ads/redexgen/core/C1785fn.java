package com.facebook.ads.redexgen.core;

public class C1785fn extends AbstractRunnableC1322Vt {
    public final C1784fm A00;
    public final C5G A01;

    public C1785fn(C1784fm c1784fm, C5G c5g) {
        this.A00 = c1784fm;
        this.A01 = c5g;
    }

    @Override
    public final void A07() {
        this.A01.setAdViewabilityChecker(this.A00.A02.A1B());
        this.A00.A02.A1f(true, true);
    }
}
