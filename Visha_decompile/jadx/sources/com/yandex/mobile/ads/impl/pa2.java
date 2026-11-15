package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class pa2 {
    private final jn1 a;
    private final hq b;
    private final kx1 c;

    public pa2() {
        jn1 jn1Var = new jn1();
        bq1 bq1Var = new bq1();
        this(jn1Var, bq1Var, new hq(bq1Var), new kx1());
    }

    public pa2(jn1 jn1Var, bq1 bq1Var, hq hqVar, kx1 kx1Var) {
        y45.j(jn1Var, "randomGenerator");
        y45.j(bq1Var, "requestHelper");
        y45.j(hqVar, "cmpRequestConfigurator");
        y45.j(kx1Var, "sensitiveModeChecker");
        this.a = jn1Var;
        this.b = hqVar;
        this.c = kx1Var;
    }
}
