package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class si1 {
    private final ui1 a;
    private final oe2 b;
    private final a70 c;
    private final yi1 d;
    private final ii1 e;

    public si1(ui1 ui1Var, oe2 oe2Var, a70 a70Var, yi1 yi1Var, ii1 ii1Var) {
        y45.j(ui1Var, "stateHolder");
        y45.j(oe2Var, "durationHolder");
        y45.j(a70Var, "playerProvider");
        y45.j(yi1Var, "volumeController");
        y45.j(ii1Var, "playerPlaybackController");
        this.a = ui1Var;
        this.b = oe2Var;
        this.c = a70Var;
        this.d = yi1Var;
        this.e = ii1Var;
    }

    public final oe2 a() {
        return this.b;
    }

    public final ii1 b() {
        return this.e;
    }

    public final a70 c() {
        return this.c;
    }

    public final ui1 d() {
        return this.a;
    }

    public final yi1 e() {
        return this.d;
    }
}
