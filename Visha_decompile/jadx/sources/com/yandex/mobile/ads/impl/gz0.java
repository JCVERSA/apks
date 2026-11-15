package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class gz0 implements jj {
    @Override
    public final int a(Context context, int i, kf1 kf1Var) {
        y45.j(context, "context");
        y45.j(kf1Var, "orientation");
        return (i <= 632 || 90.0f > ((float) wh2.a(context, kf1Var)) * 0.15f) ? 50 : 90;
    }
}
