package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ed0 {
    private final bv1 a;

    public ed0(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    public final dd0 a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        hz0 hz0VarD = o8Var.D();
        if (hz0VarD != null) {
            return new my0(o8Var, hz0VarD);
        }
        return is.c == o8Var.v() ? new lw1(this.a) : new lv1(this.a);
    }
}
