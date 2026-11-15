package com.facebook.ads.redexgen.core;

import android.util.AttributeSet;
import android.widget.RelativeLayout;

public abstract class AbstractC0842Da extends RelativeLayout implements InterfaceC1652dc {
    public E1 A00;

    public AbstractC0842Da(C1635dL c1635dL) {
        super(c1635dL);
    }

    public AbstractC0842Da(C1635dL c1635dL, AttributeSet attributeSet, int i) {
        super(c1635dL, attributeSet, i);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override
    public final void AAm(E1 e1) {
        this.A00 = e1;
        A07();
    }

    @Override
    public final void AJk(E1 e1) {
        A08();
        this.A00 = null;
    }

    public E1 getVideoView() {
        return this.A00;
    }
}
