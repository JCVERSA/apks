package com.facebook.ads.redexgen.core;

import android.animation.Animator;

public class C1683e8 implements Animator.AnimatorListener {
    public final int A00;
    public final int A01;
    public final CY A02;

    public C1683e8(CY cy, int i, int i2) {
        this.A02 = cy;
        this.A01 = i;
        this.A00 = i2;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        this.A02.A07(this.A00, this.A01, false);
        if (this.A02.A00 != null) {
            this.A02.A00.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        EnumC1676e1 enumC1676e1;
        CY cy = this.A02;
        if (this.A01 == this.A02.A04) {
            enumC1676e1 = EnumC1676e1.A02;
        } else {
            enumC1676e1 = EnumC1676e1.A04;
        }
        cy.A01 = enumC1676e1;
        if (this.A02.A00 != null) {
            this.A02.A00.removeAllListeners();
            this.A02.A00 = null;
        }
    }

    @Override
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
