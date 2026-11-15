package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class a71 {
    private final bv1 a;
    private final o3 b;

    public a71(bv1 bv1Var, o3 o3Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        this.a = bv1Var;
        this.b = o3Var;
    }

    public final m81 a(o8<y61> o8Var) {
        y45.j(o8Var, "adResponse");
        hz0 hz0VarD = o8Var.D();
        return hz0VarD != null ? new wy0(o8Var, hz0VarD) : new kw1(this.a, this.b);
    }
}
