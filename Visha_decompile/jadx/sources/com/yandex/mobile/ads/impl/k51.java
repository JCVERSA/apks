package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class k51 {
    private final o3 a;
    private final e51 b;
    private final r41 c;
    private final u41 d;

    public k51(o3 o3Var, bv1 bv1Var, e51 e51Var) {
        this(o3Var, bv1Var, e51Var, new r41(bv1Var), new u41(bv1Var));
    }

    public final void a(Context context, s41 s41Var, sj0 sj0Var, s51 s51Var, g51 g51Var) {
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(sj0Var, "imageProvider");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(g51Var, "nativeAdCreationListener");
        t41 t41VarA = this.d.a(this.a.p());
        if (t41VarA != null) {
            t41VarA.a(context, s41Var, sj0Var, this.c, s51Var, this.b, g51Var);
        } else {
            g51Var.a(w7.x());
        }
    }

    public k51(o3 o3Var, bv1 bv1Var, e51 e51Var, r41 r41Var, u41 u41Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(r41Var, "nativeAdBinderFactory");
        y45.j(u41Var, "nativeAdBlockCreatorProvider");
        this.a = o3Var;
        this.b = e51Var;
        this.c = r41Var;
        this.d = u41Var;
    }
}
