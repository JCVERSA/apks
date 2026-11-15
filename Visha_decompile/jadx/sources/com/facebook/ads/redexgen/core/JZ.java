package com.facebook.ads.redexgen.core;

public class JZ extends AbstractRunnableC1322Vt {
    public final JU A00;

    public JZ(JU ju) {
        this.A00 = ju;
    }

    @Override
    public final void A07() {
        if (!this.A00.A0e) {
            XP.A0D(1000, this.A00.A0O);
        }
        this.A00.postDelayed(this, 2000L);
    }
}
