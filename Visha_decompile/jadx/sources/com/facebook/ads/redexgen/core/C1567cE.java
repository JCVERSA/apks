package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class C1567cE extends AnimatorListenerAdapter {
    public final C4Z A00;
    public final boolean A01;

    public C1567cE(C4Z c4z, boolean z) {
        this.A00 = c4z;
        this.A01 = z;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0H.setTranslationY(0.0f);
        this.A00.A0V();
        if (!this.A01 && this.A00.A0G != null) {
            this.A00.A0G.destroy();
        }
    }
}
