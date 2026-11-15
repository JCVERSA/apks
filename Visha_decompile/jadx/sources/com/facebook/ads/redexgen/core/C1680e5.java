package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

public class C1680e5 implements ValueAnimator.AnimatorUpdateListener {
    public final View A00;
    public final C0830Co A01;

    public C1680e5(C0830Co c0830Co, View view) {
        this.A01 = c0830Co;
        this.A00 = view;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ViewGroup.LayoutParams layoutParams = this.A00.getLayoutParams();
        layoutParams.height = iIntValue;
        this.A00.setLayoutParams(layoutParams);
    }
}
