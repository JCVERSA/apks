package com.facebook.ads.redexgen.core;

import android.view.animation.Animation;

public class AnimationAnimationListenerC1370Xr implements Animation.AnimationListener {
    public final C6H A00;

    public AnimationAnimationListenerC1370Xr(C6H c6h) {
        this.A00 = c6h;
    }

    @Override
    public final void onAnimationEnd(Animation animation) {
        this.A00.A06();
        if (this.A00.A04 > 0) {
            this.A00.A05.postDelayed(this.A00.A07, this.A00.A04);
        }
    }

    @Override
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override
    public final void onAnimationStart(Animation animation) {
    }
}
