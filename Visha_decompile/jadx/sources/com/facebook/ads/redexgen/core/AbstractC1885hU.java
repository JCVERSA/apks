package com.facebook.ads.redexgen.core;

public abstract class AbstractC1885hU implements S7 {
    public final boolean A00;

    public abstract void A00();

    public abstract void A01(boolean z);

    public AbstractC1885hU(boolean z) {
        this.A00 = z;
    }

    @Override
    public final void ACh() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override
    public final void ACq() {
        A01(true);
    }
}
