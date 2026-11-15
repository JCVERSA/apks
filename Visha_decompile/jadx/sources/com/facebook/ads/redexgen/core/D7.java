package com.facebook.ads.redexgen.core;

public class D7 extends AbstractC1258Tf<C3Q> {
    public final D6 A00;

    public D7(D6 d6) {
        this.A00 = d6;
    }

    @Override
    public final void A03(C3Q c3q) {
        if (this.A00.A00 == null) {
            return;
        }
        this.A00.setText(this.A00.A02(this.A00.A00.getDuration() - this.A00.A00.getCurrentPositionInMillis()));
    }

    @Override
    public final Class<C3Q> A01() {
        return C3Q.class;
    }
}
