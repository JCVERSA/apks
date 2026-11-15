package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import defpackage.y45;

public final class va0 {
    private final Context a;

    public va0(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final FrameLayout a() {
        FrameLayout frameLayout = new FrameLayout(this.a);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return frameLayout;
    }
}
