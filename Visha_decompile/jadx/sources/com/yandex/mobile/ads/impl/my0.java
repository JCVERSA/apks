package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class my0 implements dd0 {
    private final o8<String> a;
    private final hz0 b;

    public my0(o8<String> o8Var, hz0 hz0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = o8Var;
        this.b = hz0Var;
    }

    @Override
    public final cd0<up0> a(jd0<up0> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new com.monetization.ads.mediation.interstitial.c(jd0Var, this.a, this.b);
    }

    @Override
    public final cd0<bs1> b(jd0<bs1> jd0Var) {
        y45.j(jd0Var, "loadController");
        return new zy0(jd0Var, this.a, this.b);
    }

    @Override
    public final cd0<uf> c(jd0<uf> jd0Var) {
        y45.j(jd0Var, "loadController");
        o8<String> o8Var = this.a;
        hz0 hz0Var = this.b;
        y45.j(jd0Var, "loadController");
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        o3 o3VarF = jd0Var.f();
        ly0 ly0Var = new ly0(o3VarF);
        gy0 gy0Var = new gy0(o3VarF, o8Var);
        hy0 hy0Var = new hy0(new zx0(hz0Var.c(), ly0Var, gy0Var));
        g5 g5VarI = jd0Var.i();
        ig1 ig1Var = new ig1(jd0Var, hz0Var, g5VarI, new wa());
        com.monetization.ads.mediation.appopenad.c cVar = new com.monetization.ads.mediation.appopenad.c();
        rx0 rx0Var = new rx0(o3VarF, g5VarI, cVar, gy0Var, hy0Var, ig1Var, new dy0());
        return new com.monetization.ads.mediation.appopenad.b(rx0Var, cVar, new com.monetization.ads.mediation.appopenad.a(jd0Var, rx0Var), gy0Var);
    }
}
