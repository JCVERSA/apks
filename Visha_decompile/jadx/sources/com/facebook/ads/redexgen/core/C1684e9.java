package com.facebook.ads.redexgen.core;

import android.animation.Animator;

public class C1684e9 implements Animator.AnimatorListener {
    public final CU A00;

    public C1684e9(CU cu) {
        this.A00 = cu;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        this.A00.A08(false);
        this.A00.A04();
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A00.A00 = null;
        this.A00.A01 = EnumC1676e1.A02;
        this.A00.A04();
    }

    @Override
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
