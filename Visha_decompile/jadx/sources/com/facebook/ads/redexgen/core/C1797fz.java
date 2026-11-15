package com.facebook.ads.redexgen.core;

public class C1797fz extends QT {
    public boolean A00 = false;
    public final AbstractC1796fy A01;

    public C1797fz(AbstractC1796fy abstractC1796fy) {
        this.A01 = abstractC1796fy;
    }

    @Override
    public final void A0L(C06826g c06826g, int i) {
        super.A0L(c06826g, i);
        if (i == 0 && this.A00) {
            this.A00 = false;
            this.A01.A0F();
        }
    }

    @Override
    public final void A0M(C06826g c06826g, int i, int i2) {
        if (i != 0 || i2 != 0) {
            this.A00 = true;
        }
    }
}
