package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class au1 implements fj {
    private final bv1 a;

    public au1(bv1 bv1Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        this.a = bv1Var;
    }

    @Override
    public final ej a(aj ajVar) {
        y45.j(ajVar, "loadController");
        bv1 bv1Var = this.a;
        o3 o3VarF = ajVar.f();
        cj cjVar = new cj();
        cu1 cu1Var = new cu1(bv1Var, o3VarF, ajVar);
        return new zt1(ajVar, bv1Var, o3VarF, cjVar, cu1Var, new jv1(o3VarF, cjVar, cu1Var), new xt1(o3VarF));
    }
}
