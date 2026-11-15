package com.facebook.ads.redexgen.core;

public class C1950ii extends AbstractRunnableC1322Vt {
    public final MW A00;

    public C1950ii(MW mw) {
        this.A00 = mw;
    }

    @Override
    public final void A07() {
        this.A00.A07();
        this.A00.A02.A06();
        this.A00.A05.countDown();
    }
}
