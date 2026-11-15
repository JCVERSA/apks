package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;

public abstract class a {

    class C0369a extends AnimatorListenerAdapter {

        final c f27916a;

        C0369a(c cVar) {
            this.f27916a = cVar;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f27916a.destroyCircularRevealCache();
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f27916a.buildCircularRevealCache();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator a(c cVar, float f10, float f11, float f12) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(cVar, (Property<c, V>) c.C0370c.f27929a, c.b.f27927b, new c.e(f10, f11, f12));
        c.e revealInfo = cVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f10, (int) f11, revealInfo.f27933c, f12);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    public static Animator.AnimatorListener b(c cVar) {
        return new C0369a(cVar);
    }
}
