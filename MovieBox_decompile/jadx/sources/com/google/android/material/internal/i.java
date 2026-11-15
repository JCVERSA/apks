package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

public class i implements ValueAnimator.AnimatorUpdateListener {

    private final View f28400a;

    private final View f28401b;

    private final float[] f28402c = new float[2];

    public i(View view, View view2) {
        this.f28400a = view;
        this.f28401b = view2;
    }

    @Override
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        j.a(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.f28402c);
        View view = this.f28400a;
        if (view != null) {
            view.setAlpha(this.f28402c[0]);
        }
        View view2 = this.f28401b;
        if (view2 != null) {
            view2.setAlpha(this.f28402c[1]);
        }
    }
}
