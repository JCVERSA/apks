package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class jy0 implements fj {
    private final o8<String> a;
    private final hz0 b;

    public jy0(o8<String> o8Var, hz0 hz0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = o8Var;
        this.b = hz0Var;
    }

    @Override
    public final ej a(aj ajVar) {
        y45.j(ajVar, "loadController");
        return new com.monetization.ads.mediation.banner.c(ajVar, this.a, this.b);
    }
}
