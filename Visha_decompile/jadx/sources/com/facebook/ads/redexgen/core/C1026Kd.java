package com.facebook.ads.redexgen.core;

public class C1026Kd extends AbstractRunnableC1322Vt {
    public final C1417Zm A00;

    public C1026Kd(C1417Zm c1417Zm) {
        this.A00 = c1417Zm;
    }

    @Override
    public final void A07() {
        this.A00.A03();
        if (!this.A00.A08) {
            return;
        }
        this.A00.A0D.postDelayed(this.A00.A0F, 250L);
    }
}
