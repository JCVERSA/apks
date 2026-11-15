package com.facebook.ads.redexgen.core;

import android.animation.ValueAnimator;

public class C1493b2 implements ValueAnimator.AnimatorUpdateListener {
    public final JU A00;

    public C1493b2(JU ju) {
        this.A00 = ju;
    }

    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0B.getLayoutParams().height = num.intValue();
        this.A00.A0B.requestLayout();
    }
}
