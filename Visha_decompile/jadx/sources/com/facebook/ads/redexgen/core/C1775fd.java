package com.facebook.ads.redexgen.core;

public class C1775fd extends AbstractRunnableC1309Vg {
    public final C1772fa A00;
    public final V1 A01;

    public C1775fd(C1772fa c1772fa, V1 v1) {
        this.A00 = c1772fa;
        this.A01 = v1;
    }

    @Override
    public final void A01() {
        if (this.A00.A00.A00() != null) {
            this.A00.A00.A00().onAdError(WT.A00(this.A01));
        }
    }
}
