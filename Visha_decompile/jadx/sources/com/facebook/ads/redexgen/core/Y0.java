package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.view.animation.Animation;

public class Y0 implements Animation.AnimationListener {
    public final R0 A00;
    public final NI A01;
    public final NI A02;

    public Y0(NI ni, NI ni2, R0 r0) {
        this.A01 = ni;
        this.A02 = ni2;
        this.A00 = r0;
    }

    @Override
    public final void onAnimationEnd(Animation animation) {
        this.A01.A04 = false;
        XP.A0F(this.A02);
        new Handler().postDelayed(new NL(this), 200L);
    }

    @Override
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override
    public final void onAnimationStart(Animation animation) {
    }
}
