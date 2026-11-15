package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class l3 {
    private final j1 a;

    public l3(v1 v1Var) {
        y45.j(v1Var, "adActivityListener");
        this.a = v1Var;
    }

    public final y1 a(o8<?> o8Var, ks1 ks1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(ks1Var, "closeVerificationController");
        if (o8Var.n() != ts.f) {
            return new tp0();
        }
        j1 j1Var = this.a;
        return new sr1(j1Var, ks1Var, new tr1(j1Var));
    }
}
