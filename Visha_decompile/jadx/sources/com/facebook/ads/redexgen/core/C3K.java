package com.facebook.ads.redexgen.core;

public class C3K extends DP {
    public final D9 A00;

    public C3K(D9 d9) {
        this.A00 = d9;
    }

    @Override
    public final void A03(DQ dq) {
        if ((this.A00.A03 && this.A00.A02) || !this.A00.A05 || !this.A00.A04) {
            return;
        }
        this.A00.A05 = false;
        if (!this.A00.A0G(EnumC1676e1.A03) && !this.A00.A06) {
            if (!this.A00.A0G(EnumC1676e1.A02)) {
                return;
            }
            this.A00.A03();
            this.A00.A06(true, true);
            return;
        }
        this.A00.A06 = false;
        this.A00.A07.postDelayed(new DB(this), this.A00.A00);
    }
}
