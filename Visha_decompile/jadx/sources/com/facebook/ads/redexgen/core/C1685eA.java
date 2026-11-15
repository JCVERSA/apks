package com.facebook.ads.redexgen.core;

import android.animation.Animator;

public class C1685eA implements Animator.AnimatorListener {
    public final CU A00;

    public C1685eA(CU cu) {
        this.A00 = cu;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        this.A00.A09(false);
        this.A00.A04();
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = EnumC1676e1.A04;
        XP.A0F(this.A00.A05);
        this.A00.A04();
    }

    @Override
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
