package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class lp1 {
    private final o10 a;

    public lp1() {
        this(new o10());
    }

    public final Button a(Context context) {
        y45.j(context, "context");
        Button button = new Button(context);
        button.setBackground(ContextCompat.getDrawable(context, R.drawable.monetization_ads_video_ic_replay));
        this.a.getClass();
        int iA = o10.a(context, 90.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        button.setLayoutParams(layoutParams);
        return button;
    }

    public lp1(o10 o10Var) {
        y45.j(o10Var, "dimensionConverter");
        this.a = o10Var;
    }
}
