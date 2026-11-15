package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.view.GravityCompat;
import defpackage.y45;

public final class db0 {
    private final Context a;

    public db0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final ImageView a(int i, int i2) {
        ImageView imageView = new ImageView(this.a);
        int iA = wh2.a(this.a, 28.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
        layoutParams.gravity = GravityCompat.END;
        layoutParams.rightMargin = i;
        layoutParams.topMargin = i2;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }
}
