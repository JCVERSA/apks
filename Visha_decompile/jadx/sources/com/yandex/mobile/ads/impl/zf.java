package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class zf {
    private final bv1 a;

    public zf(en2 en2Var) {
        y45.j(en2Var, "sdkEnvironmentModule");
        this.a = en2Var;
    }

    public final wf a(Context context, b5<wf> b5Var, v7 v7Var, md0 md0Var) {
        y45.j(context, "context");
        y45.j(b5Var, "finishListener");
        y45.j(v7Var, "adRequestData");
        bv1 bv1Var = this.a;
        g5 g5Var = new g5();
        sg0 sg0Var = new sg0();
        vf vfVar = new vf(context);
        o3 o3Var = new o3(ts.i, bv1Var);
        return new wf(context, bv1Var, b5Var, v7Var, g5Var, sg0Var, vfVar, o3Var, new om1(context, o3Var, g5Var, md0Var));
    }
}
