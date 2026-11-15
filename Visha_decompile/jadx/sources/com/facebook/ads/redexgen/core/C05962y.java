package com.facebook.ads.redexgen.core;

public class C05962y extends DG {
    public final D4 A00;

    public C05962y(D4 d4) {
        this.A00 = d4;
    }

    @Override
    public final void A03(DH dh) {
        if (this.A00.A01 == null || dh.A00().getAction() != 0) {
            return;
        }
        this.A00.A04.removeCallbacksAndMessages(null);
        this.A00.A07(new C1664dp(this));
    }
}
