package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

public class C1928iK implements InterfaceC1206Re {
    public final C7B A00;
    public final boolean A01;

    public C1928iK(C7B c7b, boolean z) {
        this.A00 = c7b;
        this.A01 = z;
    }

    @Override
    public final void ACM() {
        if (!U7.A1o(this.A00.A04) || !this.A01) {
            this.A00.A0C.set(true);
            this.A00.A01.AF4(this.A00);
        } else {
            this.A00.A06 = AbstractC1547bu.A01(this.A00.A04, (AnonymousClass73) this.A00.A03, 0, new C1929iL(this));
        }
    }

    @Override
    public final void ACN() {
        this.A00.A01.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
