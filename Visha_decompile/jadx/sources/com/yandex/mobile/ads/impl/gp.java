package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gp implements ns1 {
    private final ps1 a;
    private final ow1 b;

    public gp(hp hpVar, ps1 ps1Var, ow1 ow1Var) {
        y45.j(hpVar, "clientSideReward");
        y45.j(ps1Var, "rewardedListener");
        y45.j(ow1Var, "reward");
        this.a = ps1Var;
        this.b = ow1Var;
    }

    @Override
    public final void a() {
        this.a.a(this.b);
    }
}
