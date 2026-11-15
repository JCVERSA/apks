package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class C1664dp extends AnimatorListenerAdapter {
    public final C05962y A00;

    public C1664dp(C05962y c05962y) {
        this.A00 = c05962y;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        this.A00.A00.A04.postDelayed(new D5(this), 2000L);
    }
}
