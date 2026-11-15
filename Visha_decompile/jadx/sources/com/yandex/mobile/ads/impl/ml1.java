package com.yandex.mobile.ads.impl;

import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.ProgressBar;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class ml1 extends Animation {
    private final int a;
    private final int b;
    private final WeakReference<ProgressBar> c;

    public ml1(ProgressBar progressBar, int i, int i2) {
        y45.j(progressBar, "progressBar");
        this.a = i;
        this.b = i2;
        this.c = new WeakReference<>(progressBar);
        setInterpolator(new LinearInterpolator());
    }

    @Override
    public final void applyTransformation(float f, Transformation transformation) {
        ProgressBar progressBar = this.c.get();
        if (progressBar != null) {
            super.applyTransformation(f, transformation);
            int i = this.a;
            progressBar.setProgress(Math.round(((this.b - i) * f) + i));
        }
    }
}
