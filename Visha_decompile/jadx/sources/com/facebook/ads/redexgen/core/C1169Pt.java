package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

public class C1169Pt extends AnimatorListenerAdapter {
    public final View A00;
    public final ViewPropertyAnimator A01;
    public final C1171Pv A02;
    public final C06856j A03;

    public C1169Pt(C06856j c06856j, C1171Pv c1171Pv, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.A03 = c06856j;
        this.A02 = c1171Pv;
        this.A01 = viewPropertyAnimator;
        this.A00 = view;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A00.setAlpha(1.0f);
        this.A00.setTranslationX(0.0f);
        this.A00.setTranslationY(0.0f);
        this.A03.A0W(this.A02.A05, true);
        this.A03.A02.remove(this.A02.A05);
        this.A03.A0b();
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
