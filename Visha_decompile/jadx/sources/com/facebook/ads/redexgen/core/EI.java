package com.facebook.ads.redexgen.core;

public class EI extends AbstractRunnableC1322Vt {
    public final EG A00;

    public EI(EG eg) {
        this.A00 = eg;
    }

    @Override
    public final void A07() {
        this.A00.A03.A07();
        this.A00.A04.getEventBus().A04(this.A00.A06, this.A00.A05);
    }
}
