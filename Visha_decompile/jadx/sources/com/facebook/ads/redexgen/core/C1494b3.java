package com.facebook.ads.redexgen.core;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class C1494b3 extends AnimatorListenerAdapter {
    public final JU A00;
    public final boolean A01;

    public C1494b3(JU ju, boolean z) {
        this.A00 = ju;
        this.A01 = z;
    }

    @Override
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0O.setTranslationY(0.0f);
        this.A00.A0W();
        if (!this.A01 && this.A00.A0L != null) {
            this.A00.A0L.destroy();
        }
        if (this.A00.A0m != null) {
            if (!this.A00.A0H.A1a()) {
                this.A00.A0m.setVisibility(this.A01 ? 8 : 0);
            } else {
                this.A00.A0m.setVisibility(8);
            }
        }
    }
}
