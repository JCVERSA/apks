package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class g {

    private final View f28386a;

    private final View f28387b;

    private final List f28388c = new ArrayList();

    private final List f28389d = new ArrayList();

    private ValueAnimator.AnimatorUpdateListener f28390e;

    private long f28391f;

    private int f28392g;

    private int f28393h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationStart(Animator animator) {
            g.this.f28387b.setVisibility(0);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            g.this.f28387b.setVisibility(8);
        }
    }

    public g(View view, View view2) {
        this.f28386a = view;
        this.f28387b = view2;
    }

    private void e(Animator animator, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            animator.addListener((AnimatorListenerAdapter) it.next());
        }
    }

    private AnimatorSet f(boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(j(z10), k(z10), h(z10));
        return animatorSet;
    }

    private Animator h(boolean z10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat((this.f28387b.getLeft() - this.f28386a.getLeft()) + (this.f28386a.getRight() - this.f28387b.getRight()), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(q.l(this.f28389d));
        valueAnimatorOfFloat.setDuration(this.f28391f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, qa.a.f69578b));
        return valueAnimatorOfFloat;
    }

    private Animator j(boolean z10) {
        Rect rectD = f0.d(this.f28386a, this.f28392g);
        Rect rectD2 = f0.d(this.f28387b, this.f28393h);
        final Rect rect = new Rect(rectD);
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new u(rect), rectD, rectD2);
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f28374a.l(rect, valueAnimator);
            }
        });
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.f28390e;
        if (animatorUpdateListener != null) {
            valueAnimatorOfObject.addUpdateListener(animatorUpdateListener);
        }
        valueAnimatorOfObject.setDuration(this.f28391f);
        valueAnimatorOfObject.setInterpolator(v.a(z10, qa.a.f69578b));
        return valueAnimatorOfObject;
    }

    private Animator k(boolean z10) {
        List listI = f0.i(this.f28387b);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(q.e(listI));
        valueAnimatorOfFloat.setDuration(this.f28391f);
        valueAnimatorOfFloat.setInterpolator(v.a(z10, qa.a.f69577a));
        return valueAnimatorOfFloat;
    }

    public void l(Rect rect, ValueAnimator valueAnimator) {
        f0.u(this.f28387b, rect);
    }

    public g c(Collection collection) {
        this.f28389d.addAll(collection);
        return this;
    }

    public g d(AnimatorListenerAdapter animatorListenerAdapter) {
        this.f28388c.add(animatorListenerAdapter);
        return this;
    }

    public Animator g() {
        AnimatorSet animatorSetF = f(false);
        animatorSetF.addListener(new b());
        e(animatorSetF, this.f28388c);
        return animatorSetF;
    }

    public Animator i() {
        AnimatorSet animatorSetF = f(true);
        animatorSetF.addListener(new a());
        e(animatorSetF, this.f28388c);
        return animatorSetF;
    }

    public g m(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f28390e = animatorUpdateListener;
        return this;
    }

    public g n(int i10) {
        this.f28392g = i10;
        return this;
    }

    public g o(long j10) {
        this.f28391f = j10;
        return this;
    }
}
