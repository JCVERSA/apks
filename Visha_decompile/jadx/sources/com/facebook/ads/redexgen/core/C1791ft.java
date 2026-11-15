package com.facebook.ads.redexgen.core;

public class C1791ft extends AbstractRunnableC1309Vg {
    public final C1788fq A00;

    public C1791ft(C1788fq c1788fq) {
        this.A00 = c1788fq;
    }

    @Override
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onAdLoaded(this.A00.A01.A07());
        }
    }
}
