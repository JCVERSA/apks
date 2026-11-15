package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class lw1 implements dd0 {
    private final bv1 a;

    public lw1(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    @Override
    public final cd0<up0> a(jd0<up0> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new mw1(jd0Var, this.a);
    }

    @Override
    public final cd0<bs1> b(jd0<bs1> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new nw1(jd0Var, this.a, new d61());
    }

    @Override
    public final cd0<uf> c(jd0<uf> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new mw1(jd0Var, this.a);
    }
}
