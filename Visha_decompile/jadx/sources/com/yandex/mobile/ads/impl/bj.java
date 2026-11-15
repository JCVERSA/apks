package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bj {
    private final bv1 a;

    public bj(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    public final fj a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        hz0 hz0VarD = o8Var.D();
        if (hz0VarD != null) {
            return new jy0(o8Var, hz0VarD);
        }
        return is.c == o8Var.v() ? new iw1(this.a) : new au1(this.a);
    }
}
