package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class wy0 implements m81 {
    private final o8<y61> a;
    private final hz0 b;

    public wy0(o8<y61> o8Var, hz0 hz0Var) {
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = o8Var;
        this.b = hz0Var;
    }

    @Override
    public final l81 a(g61 g61Var) {
        y45.j(g61Var, "nativeAdLoadManager");
        o8<y61> o8Var = this.a;
        hz0 hz0Var = this.b;
        o3 o3VarF = g61Var.f();
        ly0 ly0Var = new ly0(o3VarF);
        gy0 gy0Var = new gy0(o3VarF, o8Var);
        zx0 zx0Var = new zx0(hz0Var.c(), ly0Var, gy0Var);
        sy0 sy0Var = new sy0(zx0Var);
        g5 g5VarI = g61Var.i();
        ig1 ig1Var = new ig1(g61Var, hz0Var, g5VarI, new wa());
        ty0 ty0Var = new ty0();
        rx0 rx0Var = new rx0(o3VarF, g5VarI, ty0Var, gy0Var, sy0Var, ig1Var, new dy0());
        return new vy0(g61Var, o8Var, hz0Var, o3VarF, ly0Var, gy0Var, zx0Var, sy0Var, g5VarI, ig1Var, ty0Var, rx0Var, new s71(o8Var, g61Var, rx0Var));
    }
}
