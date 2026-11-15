package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;

public class C1514bN implements ValueAnimator.AnimatorUpdateListener {
    public final C0989Is A00;

    public C1514bN(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.A00.A0U.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.A00.A0U.requestLayout();
    }
}
