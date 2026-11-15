package com.facebook.ads.redexgen.core;

import android.view.View;

public class QJ {
    public int A00;
    public int A01;
    public int A02;
    public int A03;

    private final QJ A00(AbstractC1182Qg abstractC1182Qg, int i) {
        View view = abstractC1182Qg.A0H;
        this.A01 = view.getLeft();
        this.A03 = view.getTop();
        this.A02 = view.getRight();
        this.A00 = view.getBottom();
        return this;
    }

    public final QJ A01(AbstractC1182Qg abstractC1182Qg) {
        return A00(abstractC1182Qg, 0);
    }
}
