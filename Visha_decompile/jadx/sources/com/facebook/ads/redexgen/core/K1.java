package com.facebook.ads.redexgen.core;

public class K1 extends AbstractRunnableC1322Vt {
    public final AbstractC1440aB A00;

    public K1(AbstractC1440aB abstractC1440aB) {
        this.A00 = abstractC1440aB;
    }

    @Override
    public final void A07() {
        this.A00.setPressed(false);
        this.A00.postOnAnimationDelayed(this.A00.A09, this.A00.A08);
    }
}
