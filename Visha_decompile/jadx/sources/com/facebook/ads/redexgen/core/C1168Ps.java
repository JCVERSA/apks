package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

public class C1168Ps extends AnimatorListenerAdapter {
    public final int A00;
    public final int A01;
    public final View A02;
    public final ViewPropertyAnimator A03;
    public final C06856j A04;
    public final AbstractC1182Qg A05;

    public C1168Ps(C06856j c06856j, AbstractC1182Qg abstractC1182Qg, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.A04 = c06856j;
        this.A05 = abstractC1182Qg;
        this.A00 = i;
        this.A02 = view;
        this.A01 = i2;
        this.A03 = viewPropertyAnimator;
    }

    @Override
    public final void onAnimationCancel(Animator animator) {
        if (this.A00 != 0) {
            this.A02.setTranslationX(0.0f);
        }
        if (this.A01 != 0) {
            this.A02.setTranslationY(0.0f);
        }
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A03.setListener(null);
        this.A04.A0U(this.A05);
        this.A04.A04.remove(this.A05);
        this.A04.A0b();
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
