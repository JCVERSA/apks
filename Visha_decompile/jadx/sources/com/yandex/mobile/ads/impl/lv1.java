package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class lv1 implements dd0 {
    private final bv1 a;

    public lv1(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    @Override
    public final cd0<up0> a(jd0<up0> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new fv1(jd0Var, this.a);
    }

    @Override
    public final cd0<bs1> b(jd0<bs1> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new fv1(jd0Var, this.a);
    }

    @Override
    public final cd0<uf> c(jd0<uf> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new fv1(jd0Var, this.a);
    }
}
