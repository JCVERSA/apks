package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class w90 {
    private final Context a;
    private final bv1 b;
    private final o3 c;

    public w90(Context context, en2 en2Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        this.a = context;
        this.b = en2Var;
        this.c = o3Var;
    }

    public final v90 a(z90 z90Var, v7 v7Var, ka0 ka0Var) {
        y45.j(z90Var, "listener");
        y45.j(v7Var, "adRequestData");
        Context context = this.a;
        bv1 bv1Var = this.b;
        o3 o3Var = this.c;
        v90 v90Var = new v90(context, bv1Var, o3Var, z90Var, v7Var, ka0Var, new xt1(o3Var), new t71(o3Var), new z91(context, bv1Var, o3Var, new g5()), new sg0());
        v90Var.a(v7Var.a());
        v90Var.a((gz1) new rb0(-1, 0, gz1.a.d));
        return v90Var;
    }
}
