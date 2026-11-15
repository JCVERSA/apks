package com.facebook.ads.redexgen.core;

public class C1774fc extends AbstractRunnableC1309Vg {
    public final C1773fb A00;

    public C1774fc(C1773fb c1773fb) {
        this.A00 = c1773fb;
    }

    @Override
    public final void A01() {
        if (this.A00.A01.A00.A00() != null) {
            this.A00.A01.A00.A00().onAdsLoaded();
        }
    }
}
