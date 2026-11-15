package com.facebook.ads.redexgen.core;

public class C1149Oz extends AbstractRunnableC1322Vt {
    public final C1332Wd A00;

    public C1149Oz(C1332Wd c1332Wd) {
        this.A00 = c1332Wd;
    }

    @Override
    public final void A07() {
        if (!this.A00.A05()) {
            return;
        }
        this.A00.A02();
        this.A00.A05.postDelayed(this, this.A00.A02);
    }
}
