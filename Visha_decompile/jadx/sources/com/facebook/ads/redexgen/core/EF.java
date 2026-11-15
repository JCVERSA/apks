package com.facebook.ads.redexgen.core;

public class EF extends AbstractRunnableC1322Vt {
    public final E1 A00;

    public EF(E1 e1) {
        this.A00 = e1;
    }

    @Override
    public final void A07() {
        if (!this.A00.A04) {
            C1257Te c1257Te = this.A00.A0C;
            final int currentPositionInMillis = this.A00.getCurrentPositionInMillis();
            c1257Te.A02(new DY(currentPositionInMillis) {
            });
            this.A00.A08.postDelayed(this, this.A00.A01);
        }
    }
}
