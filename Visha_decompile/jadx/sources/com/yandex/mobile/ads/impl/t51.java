package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class t51 {
    private final x81 a;
    private final q41 b;

    public t51(bv1 bv1Var) {
        this(bv1Var, new x81(), new q41(bv1Var));
    }

    public final q61 a(Context context, s41 s41Var, sj0 sj0Var, r41 r41Var, s51 s51Var, e51 e51Var, g41 g41Var) {
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(sj0Var, "imageProvider");
        y45.j(r41Var, "nativeAdBinderFactory");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(e51Var, "nativeAdControllers");
        if (g41Var == null) {
            return null;
        }
        w81 w81VarA = this.a.a(g41Var.g());
        dc1 dc1VarA = s51Var.d().a(g41Var);
        gc0 gc0Var = new gc0();
        return w81VarA.a(context, g41Var, new m61(context, g41Var, sj0Var, dc1VarA), sj0Var, this.b.a(context, s41Var, r41Var.a(s41Var, g41Var), dc1VarA, s51Var, gc0Var, g41Var, s9.b), e51Var);
    }

    public t51(bv1 bv1Var, x81 x81Var, q41 q41Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(x81Var, "nativeGenericAdCreatorProvider");
        y45.j(q41Var, "nativeAdBinderConfigurationCreator");
        this.a = x81Var;
        this.b = q41Var;
    }
}
