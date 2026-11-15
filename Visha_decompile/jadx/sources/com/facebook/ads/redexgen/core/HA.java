package com.facebook.ads.redexgen.core;

public class HA extends AbstractRunnableC1322Vt {
    public final C4Z A00;

    public HA(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override
    public final void A07() {
        XP.A0D(1000, this.A00.A0H);
        this.A00.postDelayed(this, 2000L);
    }
}
