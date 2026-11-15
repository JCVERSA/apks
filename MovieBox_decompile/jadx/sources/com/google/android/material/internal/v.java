package com.google.android.material.internal;

import android.animation.TimeInterpolator;

public class v implements TimeInterpolator {

    private final TimeInterpolator f28445a;

    public v(TimeInterpolator timeInterpolator) {
        this.f28445a = timeInterpolator;
    }

    public static TimeInterpolator a(boolean z10, TimeInterpolator timeInterpolator) {
        return z10 ? timeInterpolator : new v(timeInterpolator);
    }

    @Override
    public float getInterpolation(float f10) {
        return 1.0f - this.f28445a.getInterpolation(f10);
    }
}
