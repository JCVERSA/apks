package com.facebook.ads.redexgen.core;

public class C1945ib extends AbstractRunnableC1322Vt {
    public final C1943iZ A00;
    public final C5G A01;

    public C1945ib(C1943iZ c1943iZ, C5G c5g) {
        this.A00 = c1943iZ;
        this.A01 = c5g;
    }

    @Override
    public final void A07() {
        this.A00.A00.A0A();
        if (this.A00.A00.A0C != null) {
            this.A01.setAdViewabilityChecker(this.A00.A00.A0C);
            this.A00.A00.A0C.A0U();
        }
    }
}
