package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;

public final class w {

    private final ArrayList f28446a = new ArrayList();

    private b f28447b = null;

    ValueAnimator f28448c = null;

    private final Animator.AnimatorListener f28449d = new a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            w wVar = w.this;
            if (wVar.f28448c == animator) {
                wVar.f28448c = null;
            }
        }
    }

    static class b {

        final int[] f28451a;

        final ValueAnimator f28452b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f28451a = iArr;
            this.f28452b = valueAnimator;
        }
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f28449d);
        this.f28446a.add(bVar);
    }
}
