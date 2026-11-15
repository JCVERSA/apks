package com.facebook.ads.redexgen.core;

import android.view.animation.Animation;

public class XO implements Animation.AnimationListener {
    @Override
    public abstract void onAnimationEnd(Animation animation);

    @Override
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override
    public final void onAnimationStart(Animation animation) {
    }
}
