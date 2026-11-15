package com.transsion.widgetslib.widget.shadow;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;

public class BackOutInterpolator implements Interpolator {
    public BackOutInterpolator() {
    }

    @Override
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * ((f2 * 2.70158f) + 1.70158f)) + 1.0f;
    }

    public BackOutInterpolator(Context context, AttributeSet attributeSet) {
    }
}
