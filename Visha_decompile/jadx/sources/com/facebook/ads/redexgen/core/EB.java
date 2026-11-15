package com.facebook.ads.redexgen.core;

public class EB extends AbstractRunnableC1322Vt {
    public final int A00;
    public final int A01;
    public final E1 A02;

    public EB(E1 e1, int i, int i2) {
        this.A02 = e1;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override
    public final void A07() {
        this.A02.A0C.A02(new DL(this.A00, this.A01));
    }
}
