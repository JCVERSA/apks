package com.yandex.mobile.ads.impl;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import defpackage.y45;

public final class p42<T extends TextView> implements zd<T> {
    private final int a;
    private final ArgbEvaluator b;
    private ValueAnimator c;

    public static final class a implements ValueAnimator.AnimatorUpdateListener {
        private final TextView a;

        public a(TextView textView) {
            y45.j(textView, "textView");
            this.a = textView;
        }

        @Override
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            y45.j(valueAnimator, "valueAnimator");
            Object animatedValue = valueAnimator.getAnimatedValue();
            if (animatedValue instanceof Integer) {
                this.a.setTextColor(((Number) animatedValue).intValue());
            }
        }
    }

    public p42(int i) {
        this(i, new ArgbEvaluator());
    }

    @Override
    public final void a(View view) {
        TextView textView = (TextView) view;
        y45.j(textView, "textView");
        this.c = ValueAnimator.ofObject(this.b, Integer.valueOf(textView.getCurrentTextColor()), Integer.valueOf(this.a));
        a aVar = new a(textView);
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.addUpdateListener(aVar);
        }
        ValueAnimator valueAnimator2 = this.c;
        if (valueAnimator2 != null) {
            valueAnimator2.setDuration(500);
        }
        ValueAnimator valueAnimator3 = this.c;
        if (valueAnimator3 != null) {
            valueAnimator3.start();
        }
    }

    @Override
    public final void cancel() {
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.c;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    public p42(@ColorInt int i, ArgbEvaluator argbEvaluator) {
        y45.j(argbEvaluator, "argbEvaluator");
        this.a = i;
        this.b = argbEvaluator;
    }
}
