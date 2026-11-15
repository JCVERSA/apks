package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class kw1 implements m81 {
    private final bv1 a;
    private final o3 b;

    public kw1(bv1 bv1Var, o3 o3Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        this.a = bv1Var;
        this.b = o3Var;
    }

    @Override
    public final l81 a(g61 g61Var) {
        y45.j(g61Var, "nativeAdLoadManager");
        bv1 bv1Var = this.a;
        return new jw1(bv1Var, g61Var, this.b, new gw1(bv1Var));
    }
}
