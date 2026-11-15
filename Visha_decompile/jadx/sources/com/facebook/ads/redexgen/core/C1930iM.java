package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

public class C1930iM implements S7 {
    public final C7B A00;

    public C1930iM(C7B c7b) {
        this.A00 = c7b;
    }

    private void A00(boolean z) {
        if (!z) {
            this.A00.A01.AF7(this.A00, AdError.CACHE_ERROR);
        } else {
            this.A00.A0C.set(true);
            this.A00.A01.AF4(this.A00);
        }
    }

    @Override
    public final void ACh() {
        A00(false);
    }

    @Override
    public final void ACq() {
        A00(true);
    }
}
