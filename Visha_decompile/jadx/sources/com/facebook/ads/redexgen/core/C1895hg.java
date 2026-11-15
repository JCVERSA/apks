package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;

public class C1895hg implements S7 {
    public final AbstractC1910hy A00;
    public final NG A01;
    public final NH A02;
    public final C1635dL A03;
    public final boolean A04;

    public C1895hg(NH nh, C1635dL c1635dL, boolean z, AbstractC1910hy abstractC1910hy, NG ng) {
        this.A02 = nh;
        this.A03 = c1635dL;
        this.A04 = z;
        this.A00 = abstractC1910hy;
        this.A01 = ng;
    }

    private void A00(boolean z) {
        if (z) {
            if (U7.A1l(this.A03) && this.A04) {
                this.A02.A02.add(AbstractC1547bu.A01(this.A03, this.A00, 1, new C1896hh(this)));
                return;
            } else {
                this.A01.ACG();
                return;
            }
        }
        this.A01.ACF(AdError.CACHE_ERROR);
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
