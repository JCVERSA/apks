package com.facebook.ads.redexgen.core;

import android.view.View;

public class C1803g6 implements InterfaceC1185Qj {
    public final QO A00;

    public C1803g6(QO qo) {
        this.A00 = qo;
    }

    @Override
    public final View A79(int i) {
        return this.A00.A0v(i);
    }

    @Override
    public final int A7B(View view) {
        return this.A00.A0p(view) + ((QP) view.getLayoutParams()).rightMargin;
    }

    @Override
    public final int A7C(View view) {
        return this.A00.A0m(view) - ((QP) view.getLayoutParams()).leftMargin;
    }

    @Override
    public final int A8Y() {
        return this.A00.A0j() - this.A00.A0h();
    }

    @Override
    public final int A8Z() {
        return this.A00.A0g();
    }
}
