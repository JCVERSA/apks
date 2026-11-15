package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;

public class C1142Os extends XO {
    public final View A00;
    public final ScaleAnimation A01;

    public C1142Os(View view, ScaleAnimation scaleAnimation) {
        this.A00 = view;
        this.A01 = scaleAnimation;
    }

    @Override
    public final void onAnimationEnd(Animation animation) {
        this.A00.startAnimation(this.A01);
    }
}
