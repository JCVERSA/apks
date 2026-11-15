package com.facebook.ads.redexgen.core;

public class C1882hR extends AbstractRunnableC1322Vt {
    public final AbstractC1881hQ A00;
    public final V1 A01;

    public C1882hR(AbstractC1881hQ abstractC1881hQ, V1 v1) {
        this.A00 = abstractC1881hQ;
        this.A01 = v1;
    }

    @Override
    public final void A07() {
        this.A00.A0B.A0F().A5Y(this.A01.A03().getErrorCode(), this.A01.A04());
        if (this.A00.A07 != null) {
            this.A00.A07.A0G(this.A01);
        }
    }
}
