package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;

public class fF extends vS {
    ObjectAnimator Sj;

    private boolean f20278dx;
    ObjectAnimator sP;
    private int sU;
    private Runnable zR;

    public fF(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.EjP.Dq dq2) {
        super(context, dynamicRootView, dq2);
        this.sU = 0;
        this.f20278dx = false;
        this.zR = new Runnable() {
            @Override
            public void run() {
                fF.this.Sj();
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
        postDelayed(this.zR, 2500L);
    }

    @Override
    public void sP() {
        removeCallbacks(this.zR);
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
        final View childAt;
        final View childAt2 = getChildAt(this.sU);
        int i10 = this.sU;
        if (i10 == 0) {
            this.f20278dx = false;
        }
        boolean z10 = i10 + 1 >= getChildCount() || ((ViewGroup) getChildAt(this.sU + 1)).getChildCount() <= 0;
        if (this.Fmk.TEQ().HiB().Sj() || !z10) {
            View childAt3 = z10 ? getChildAt((this.sU + 2) % getChildCount()) : getChildAt((this.sU + 1) % getChildCount());
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (-(this.Dq + getChildAt(this.sU).getHeight())) / 2);
            if (z10) {
                this.sU++;
            }
            childAt = childAt3;
        } else {
            this.f20278dx = true;
            childAt = getChildAt(this.sU - 1);
            this.Sj = ObjectAnimator.ofFloat(childAt2, "translationY", 0.0f, (this.Dq + getChildAt(this.sU).getHeight()) / 2);
        }
        this.Sj.setInterpolator(new LinearInterpolator());
        this.Sj.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationEnd(Animator animator) {
                childAt2.setVisibility(8);
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
        if (this.f20278dx) {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationY", (-(this.Dq + childAt.getHeight())) / 2, 0.0f);
        } else {
            this.sP = ObjectAnimator.ofFloat(childAt, "translationY", (this.Dq + childAt.getHeight()) / 2, 0.0f);
        }
        this.sP.setInterpolator(new LinearInterpolator());
        this.sP.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animator) {
                childAt.setVisibility(0);
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
        if (this.f20278dx) {
            this.sU--;
        } else {
            int i11 = this.sU + 1;
            this.sU = i11;
            this.sU = i11 % getChildCount();
        }
        postDelayed(this.zR, 3000L);
    }
}
