package com.facebook.ads.redexgen.core;

import android.view.animation.Animation;

public class C0912Fs extends XO {
    public final C0911Fr A00;

    public C0912Fs(C0911Fr c0911Fr) {
        this.A00 = c0911Fr;
    }

    @Override
    public final void onAnimationEnd(Animation animation) {
        XP.A0F(this.A00.A01);
        this.A00.A00.ADh();
    }
}
