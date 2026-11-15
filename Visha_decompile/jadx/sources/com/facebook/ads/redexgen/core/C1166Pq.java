package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

public class C1166Pq extends AnimatorListenerAdapter {
    public final View A00;
    public final ViewPropertyAnimator A01;
    public final C06856j A02;
    public final AbstractC1182Qg A03;

    public C1166Pq(C06856j c06856j, AbstractC1182Qg abstractC1182Qg, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.A02 = c06856j;
        this.A03 = abstractC1182Qg;
        this.A01 = viewPropertyAnimator;
        this.A00 = view;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A00.setAlpha(1.0f);
        this.A02.A0V(this.A03);
        this.A02.A06.remove(this.A03);
        this.A02.A0b();
    }

    @Override
    public final void onAnimationStart(Animator animator) {
    }
}
