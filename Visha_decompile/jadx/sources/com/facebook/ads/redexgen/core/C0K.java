package com.facebook.ads.redexgen.core;

import java.util.ArrayList;
import java.util.List;

public final class C0K extends C05290h {
    public C06685s A00;
    public List<C1602cn> A01;

    public C0K(C1635dL c1635dL) {
        super(c1635dL);
        this.A00 = new C06685s(this, 1, null, null, null);
    }

    public final void A20(C1708eX c1708eX) {
        if (this.A00 != null) {
            this.A00.A0c(c1708eX);
        }
    }

    public C06685s getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0d(this.A01);
    }
}
