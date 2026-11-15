package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;
import java.util.Collection;

public class q implements ValueAnimator.AnimatorUpdateListener {

    private final a f28403a;

    private final View[] f28404b;

    interface a {
        void a(ValueAnimator valueAnimator, View view);
    }

    public q(a aVar, View... viewArr) {
        this.f28403a = aVar;
        this.f28404b = viewArr;
    }

    public static q e(Collection collection) {
        return new q(new p(), collection);
    }

    public static q f(View... viewArr) {
        return new q(new p(), viewArr);
    }

    public static q g(View... viewArr) {
        return new q(new a() {
            @Override
            public final void a(ValueAnimator valueAnimator, View view) {
                q.i(valueAnimator, view);
            }
        }, viewArr);
    }

    public static void h(ValueAnimator valueAnimator, View view) {
        view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static void i(ValueAnimator valueAnimator, View view) {
        Float f10 = (Float) valueAnimator.getAnimatedValue();
        view.setScaleX(f10.floatValue());
        view.setScaleY(f10.floatValue());
    }

    public static void j(ValueAnimator valueAnimator, View view) {
        view.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static void k(ValueAnimator valueAnimator, View view) {
        view.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static q l(Collection collection) {
        return new q(new m(), collection);
    }

    public static q m(View... viewArr) {
        return new q(new m(), viewArr);
    }

    public static q n(View... viewArr) {
        return new q(new a() {
            @Override
            public final void a(ValueAnimator valueAnimator, View view) {
                q.k(valueAnimator, view);
            }
        }, viewArr);
    }

    @Override
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        for (View view : this.f28404b) {
            this.f28403a.a(valueAnimator, view);
        }
    }

    public q(a aVar, Collection collection) {
        this.f28403a = aVar;
        this.f28404b = (View[]) collection.toArray(new View[0]);
    }
}
