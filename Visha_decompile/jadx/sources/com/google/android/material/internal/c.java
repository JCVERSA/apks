package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

public final class c implements MultiViewUpdateListener.Listener {
    @Override
    public final void onAnimationUpdate(ValueAnimator valueAnimator, View view) {
        MultiViewUpdateListener.setTranslationY(valueAnimator, view);
    }
}
