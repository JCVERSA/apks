package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class xp0 {
    private final bv1 a;

    public xp0(en2 en2Var) {
        y45.j(en2Var, "sdkEnvironmentModule");
        this.a = en2Var;
    }

    public final wp0 a(Context context, b5<wp0> b5Var, v7 v7Var, md0 md0Var) {
        y45.j(context, "context");
        y45.j(b5Var, "itemsLoadFinishListener");
        y45.j(v7Var, "adRequestData");
        bv1 bv1Var = this.a;
        g5 g5Var = new g5();
        sg0 sg0Var = new sg0();
        vp0 vp0Var = new vp0(context);
        bq0 bq0Var = new bq0(context, md0Var);
        o3 o3Var = new o3(ts.e, bv1Var);
        return new wp0(context, bv1Var, b5Var, v7Var, g5Var, sg0Var, vp0Var, bq0Var, o3Var, new qm1(context, o3Var, g5Var, bq0Var));
    }
}
