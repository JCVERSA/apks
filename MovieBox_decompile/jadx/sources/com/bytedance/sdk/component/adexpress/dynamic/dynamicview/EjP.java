package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;

public class EjP extends vS {
    ObjectAnimator Sj;

    private Runnable f20271dx;
    ObjectAnimator sP;
    private int sU;

    public EjP(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = 0;
        this.f20271dx = new Runnable() {
            @Override
            public void run() {
                EjP.this.Sj();
            }
        };
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.topMargin = (this.Dq - layoutParams.height) / 2;
            childAt.setLayoutParams(layoutParams);
            if (i10 != 0) {
                childAt.setVisibility(8);
            }
        }
        postDelayed(this.f20271dx, 2500L);
    }

    @Override
    public void sP() {
        removeCallbacks(this.f20271dx);
        ObjectAnimator objectAnimator = this.Sj;
        if (objectAnimator != null) {
            objectAnimator.removeAllUpdateListeners();
            this.Sj.cancel();
        }
        ObjectAnimator objectAnimator2 = this.sP;
        if (objectAnimator2 != null) {
            objectAnimator2.removeAllUpdateListeners();
            this.sP.cancel();
        }
        super.sP();
    }

    public void Sj() {
        final View childAt = getChildAt(this.sU);
        final View childAt2 = getChildAt((this.sU + 1) % getChildCount());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(childAt, "translationY", 0.0f, (-(this.Dq + getChildAt(this.sU).getHeight())) / 2);
        this.Sj = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.Sj.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationEnd(Animator animator) {
                childAt.setVisibility(8);
            }

            @Override
            public void onAnimationCancel(Animator animator) {
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
            }

            @Override
            public void onAnimationStart(Animator animator) {
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(childAt2, "translationY", (this.Dq + childAt2.getHeight()) / 2, 0.0f);
        this.sP = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        this.sP.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animator) {
                childAt2.setVisibility(0);
            }

            @Override
            public void onAnimationCancel(Animator animator) {
            }

            @Override
            public void onAnimationEnd(Animator animator) {
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
            }
        });
        this.Sj.setDuration(500L);
        this.sP.setDuration(500L);
        this.Sj.start();
        this.sP.start();
        int i10 = this.sU + 1;
        this.sU = i10;
        this.sU = i10 % getChildCount();
        postDelayed(this.f20271dx, 2000L);
    }
}
