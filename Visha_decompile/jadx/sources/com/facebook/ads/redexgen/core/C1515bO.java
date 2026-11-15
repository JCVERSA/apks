package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class C1515bO extends AnimatorListenerAdapter {
    public final C0989Is A00;
    public final boolean A01;

    public C1515bO(C0989Is c0989Is, boolean z) {
        this.A00 = c0989Is;
        this.A01 = z;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0q(this.A00.A0D, true);
        if (!this.A01 && this.A00.A08 != null) {
            this.A00.A08.destroy();
        }
    }
}
