package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s86;
import defpackage.y45;

public final class ev0 implements c10 {
    private final int a;
    private final yu0 b;

    public ev0(rt rtVar, int i, yu0 yu0Var) {
        y45.j(rtVar, "nativeAdAssets");
        y45.j(yu0Var, "mediaAspectRatioProvider");
        this.a = i;
        this.b = yu0Var;
    }

    @Override
    public final boolean a(Context context) {
        y45.j(context, "context");
        int i = wh2.b;
        int i2 = eb0.a(context, "context").heightPixels;
        int i3 = eb0.a(context, "context").widthPixels;
        Float fA = this.b.a();
        return i3 - (fA != null ? s86.c(fA.floatValue() * ((float) i2)) : 0) >= this.a;
    }
}
