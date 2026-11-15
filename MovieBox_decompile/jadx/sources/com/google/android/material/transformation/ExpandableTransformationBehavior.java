package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    private AnimatorSet f29335b;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f29335b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @Override
    protected boolean H(View view, View view2, boolean z10, boolean z11) {
        AnimatorSet animatorSet = this.f29335b;
        boolean z12 = animatorSet != null;
        if (z12) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetJ = J(view, view2, z10, z12);
        this.f29335b = animatorSetJ;
        animatorSetJ.addListener(new a());
        this.f29335b.start();
        if (!z11) {
            this.f29335b.end();
        }
        return true;
    }

    protected abstract AnimatorSet J(View view, View view2, boolean z10, boolean z11);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
