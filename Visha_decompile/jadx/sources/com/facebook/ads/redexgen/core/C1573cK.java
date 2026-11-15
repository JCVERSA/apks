package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;

public class C1573cK implements ValueAnimator.AnimatorUpdateListener {
    public final C4K A00;

    public C1573cK(C4K c4k) {
        this.A00 = c4k;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0X.getLayoutParams().height = num.intValue();
        this.A00.A0X.requestLayout();
    }
}
