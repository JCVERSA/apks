package com.facebook.ads.redexgen.core;

import android.view.View;

public class C1802g5 implements InterfaceC1185Qj {
    public final QO A00;

    public C1802g5(QO qo) {
        this.A00 = qo;
    }

    @Override
    public final View A79(int i) {
        return this.A00.A0v(i);
    }

    @Override
    public final int A7B(View view) {
        return this.A00.A0l(view) + ((QP) view.getLayoutParams()).bottomMargin;
    }

    @Override
    public final int A7C(View view) {
        return this.A00.A0q(view) - ((QP) view.getLayoutParams()).topMargin;
    }

    @Override
    public final int A8Y() {
        return this.A00.A0Z() - this.A00.A0f();
    }

    @Override
    public final int A8Z() {
        return this.A00.A0i();
    }
}
