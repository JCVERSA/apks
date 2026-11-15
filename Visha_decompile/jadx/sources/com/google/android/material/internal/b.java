package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

public final class b implements MultiViewUpdateListener.Listener {
    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator, View view) {
        MultiViewUpdateListener.setScale(valueAnimator, view);
    }
}
