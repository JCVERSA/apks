package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class qm0 {
    private final et a;
    private final pm0 b;
    private om0 c;

    public qm0(et etVar, gf2 gf2Var) {
        this(etVar, gf2Var, new pm0(gf2Var));
    }

    public final om0 a() {
        om0 om0Var = this.c;
        if (om0Var != null) {
            return om0Var;
        }
        om0 om0VarA = this.b.a(this.a.a());
        this.c = om0VarA;
        return om0VarA;
    }

    public qm0(et etVar, gf2 gf2Var, pm0 pm0Var) {
        y45.j(etVar, "instreamVideoAd");
        y45.j(gf2Var, "videoPlayerController");
        y45.j(pm0Var, "instreamAdPlaylistCreator");
        this.a = etVar;
        this.b = pm0Var;
    }
}
