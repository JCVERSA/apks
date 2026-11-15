package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

public class C7E extends AbstractC1885hU {
    public final C7B A00;
    public final AbstractC1918iA A01;
    public final AnonymousClass73 A02;
    public final boolean A03;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7E(C7B c7b, boolean z, boolean z2, AnonymousClass73 anonymousClass73, AbstractC1918iA abstractC1918iA) {
        super(z);
        this.A00 = c7b;
        this.A03 = z2;
        this.A02 = anonymousClass73;
        this.A01 = abstractC1918iA;
    }

    @Override
    public final void A00() {
        this.A00.A01.AF7(this.A01, AdError.CACHE_ERROR);
    }

    @Override
    public final void A01(boolean z) {
        if (!U7.A1o(this.A00.A04) || !this.A03) {
            if (this.A00.A05 == EnumC1305Vb.A0I) {
                this.A00.A04.A0F().ADn();
            }
            this.A00.A0C.set(true);
            this.A00.A01.AF4(this.A01);
            return;
        }
        this.A00.A06 = AbstractC1547bu.A01(this.A00.A04, this.A02, 0, new C1927iJ(this));
    }
}
