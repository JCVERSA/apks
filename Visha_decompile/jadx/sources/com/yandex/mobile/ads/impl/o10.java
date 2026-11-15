package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.util.TypedValue;
import defpackage.s86;
import defpackage.y45;

public final class o10 {
    public static int a(Context context, float f) {
        y45.j(context, "context");
        return s86.c(TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics()));
    }
}
