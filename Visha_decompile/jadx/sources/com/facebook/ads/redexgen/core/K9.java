package com.facebook.ads.redexgen.core;

public class K9 extends AbstractRunnableC1322Vt {
    public final AbstractC1440aB A00;

    public K9(AbstractC1440aB abstractC1440aB) {
        this.A00 = abstractC1440aB;
    }

    @Override
    public final void A07() {
        if (!this.A00.isPressed()) {
            this.A00.setPressed(true);
            this.A00.postOnAnimationDelayed(this.A00.A0A, 250L);
        } else {
            this.A00.postDelayed(this, this.A00.A08);
        }
    }
}
