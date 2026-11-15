package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class es1 {
    private final bv1 a;

    public es1(en2 en2Var) {
        y45.j(en2Var, "sdkEnvironmentModule");
        this.a = en2Var;
    }

    public final ds1 a(Context context, b5<ds1> b5Var, v7 v7Var, md0 md0Var) {
        y45.j(context, "context");
        y45.j(b5Var, "itemsLoadFinishListener");
        y45.j(v7Var, "adRequestData");
        bv1 bv1Var = this.a;
        g5 g5Var = new g5();
        sg0 sg0Var = new sg0();
        cs1 cs1Var = new cs1(context);
        is1 is1Var = new is1(context, md0Var);
        o3 o3Var = new o3(ts.f, bv1Var);
        return new ds1(context, bv1Var, b5Var, v7Var, g5Var, sg0Var, cs1Var, is1Var, o3Var, new sm1(context, o3Var, g5Var, is1Var), new xr1());
    }
}
