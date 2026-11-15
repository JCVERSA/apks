package com.facebook.ads.redexgen.core;

public class C0845Dd extends AbstractC1124Nz {
    public final C0844Dc A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0845Dd(C0844Dc c0844Dc, double d, double d2, double d3, boolean z) {
        super(d, d2, d3, z);
        this.A00 = c0844Dc;
    }

    @Override
    public final void A00(boolean z, boolean z2, O1 o1) {
        if ((!U7.A0z(this.A00.A0D) || !this.A00.A0A) && z2) {
            this.A00.A0A = true;
            this.A00.A0R(this.A00.A0J, this.A00.A0J(EnumC1642dS.A0B));
        }
    }
}
