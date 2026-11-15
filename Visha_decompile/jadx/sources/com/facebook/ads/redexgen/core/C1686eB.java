package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;

public class C1686eB implements ValueAnimator.AnimatorUpdateListener {
    public final View A00;
    public final CU A01;

    public C1686eB(CU cu, View view) {
        this.A01 = cu;
        this.A00 = view;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int value = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.A00.setTranslationY(value);
    }
}
