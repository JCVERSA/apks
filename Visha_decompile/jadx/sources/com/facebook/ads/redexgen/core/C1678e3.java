package com.facebook.ads.redexgen.core;

import android.animation.Animator;

public class C1678e3 implements Animator.AnimatorListener {
    public final C0830Co A00;

    public C1678e3(C0830Co c0830Co) {
        this.A00 = c0830Co;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        this.A00.A07(false);
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = null;
        this.A00.A02 = EnumC1676e1.A02;
    }

    @Override
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
