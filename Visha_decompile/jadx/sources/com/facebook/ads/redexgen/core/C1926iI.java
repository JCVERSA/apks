package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

public class C1926iI implements InterfaceC1206Re {
    public final C7B A00;

    public C1926iI(C7B c7b) {
        this.A00 = c7b;
    }

    @Override
    public final void ACM() {
        this.A00.A0C.set(true);
        this.A00.A01.AF4(this.A00);
    }

    @Override
    public final void ACN() {
        this.A00.A01.AF7(this.A00, AdError.CACHE_ERROR);
    }
}
