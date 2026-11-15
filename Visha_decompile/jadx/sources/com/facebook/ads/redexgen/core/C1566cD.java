package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;

public class C1566cD implements ValueAnimator.AnimatorUpdateListener {
    public final C4Z A00;

    public C1566cD(C4Z c4z) {
        this.A00 = c4z;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0b.getLayoutParams().height = num.intValue();
        this.A00.A0b.requestLayout();
    }
}
