package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class pl1 {
    private final o10 a;

    public pl1() {
        this(new o10());
    }

    public final ProgressBar a(Context context) {
        y45.j(context, "context");
        ProgressBar progressBar = new ProgressBar(context);
        progressBar.setIndeterminateDrawable(ContextCompat.getDrawable(context, R.drawable.monetization_ads_video_progress_bar_background));
        this.a.getClass();
        int iA = o10.a(context, 45.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        return progressBar;
    }

    public pl1(o10 o10Var) {
        y45.j(o10Var, "dimensionConverter");
        this.a = o10Var;
    }
}
