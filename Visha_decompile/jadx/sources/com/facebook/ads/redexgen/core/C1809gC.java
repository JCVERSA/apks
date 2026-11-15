package com.facebook.ads.redexgen.core;

import android.view.View;

public class C1809gC extends Q8 {
    public C1809gC(QO qo) {
        super(qo, null);
    }

    @Override
    public final int A06() {
        return this.A02.A0j();
    }

    @Override
    public final int A07() {
        return this.A02.A0j() - this.A02.A0h();
    }

    @Override
    public final int A08() {
        return this.A02.A0h();
    }

    @Override
    public final int A09() {
        return this.A02.A0k();
    }

    @Override
    public final int A0A() {
        return this.A02.A0g();
    }

    @Override
    public final int A0B() {
        return (this.A02.A0j() - this.A02.A0g()) - this.A02.A0h();
    }

    @Override
    public final int A0C(View view) {
        return this.A02.A0p(view) + ((QP) view.getLayoutParams()).rightMargin;
    }

    @Override
    public final int A0D(View view) {
        QP qp = (QP) view.getLayoutParams();
        return this.A02.A0o(view) + qp.leftMargin + qp.rightMargin;
    }

    @Override
    public final int A0E(View view) {
        QP qp = (QP) view.getLayoutParams();
        return this.A02.A0n(view) + qp.topMargin + qp.bottomMargin;
    }

    @Override
    public final int A0F(View view) {
        return this.A02.A0m(view) - ((QP) view.getLayoutParams()).leftMargin;
    }

    @Override
    public final int A0G(View view) {
        this.A02.A1G(view, true, this.A01);
        return this.A01.right;
    }

    @Override
    public final int A0H(View view) {
        this.A02.A1G(view, true, this.A01);
        return this.A01.left;
    }

    @Override
    public final void A0J(int i) {
        this.A02.A11(i);
    }
}
