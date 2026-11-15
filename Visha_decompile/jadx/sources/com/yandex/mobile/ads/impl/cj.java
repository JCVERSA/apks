package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class cj implements j9 {
    @Override
    public final boolean a(Context context, gz1 gz1Var) {
        y45.j(context, "context");
        y45.j(gz1Var, "sizeInfo");
        return gz1Var.c(context) >= 0 && gz1Var.a(context) >= 0;
    }
}
