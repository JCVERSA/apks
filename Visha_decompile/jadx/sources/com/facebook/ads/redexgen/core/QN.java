package com.facebook.ads.redexgen.core;

public class QN extends AbstractRunnableC1309Vg {
    public final C6I A00;
    public final V1 A01;

    public QN(C6I c6i, V1 v1) {
        this.A00 = c6i;
        this.A01 = v1;
    }

    @Override
    public final void A01() {
        this.A00.A01.onError(this.A00.A00, WT.A00(this.A01));
    }
}
