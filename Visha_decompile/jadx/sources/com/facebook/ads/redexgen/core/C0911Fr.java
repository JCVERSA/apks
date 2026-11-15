package com.facebook.ads.redexgen.core;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;

public class C0911Fr extends AbstractRunnableC1322Vt {
    public final InterfaceC1585cW A00;
    public final C1586cX A01;

    public C0911Fr(C1586cX c1586cX, InterfaceC1585cW interfaceC1585cW) {
        this.A01 = c1586cX;
        this.A00 = interfaceC1585cW;
    }

    @Override
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C0912Fs(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
