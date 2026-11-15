package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ti1 {
    private final vi1 a;
    private final pe2 b;
    private final b70 c;
    private final zi1 d;
    private final ji1 e;

    public ti1(vi1 vi1Var, pe2 pe2Var, b70 b70Var, zi1 zi1Var, ji1 ji1Var) {
        y45.j(vi1Var, "stateHolder");
        y45.j(pe2Var, "durationHolder");
        y45.j(b70Var, "playerProvider");
        y45.j(zi1Var, "volumeController");
        y45.j(ji1Var, "playerPlaybackController");
        this.a = vi1Var;
        this.b = pe2Var;
        this.c = b70Var;
        this.d = zi1Var;
        this.e = ji1Var;
    }

    public final pe2 a() {
        return this.b;
    }

    public final ji1 b() {
        return this.e;
    }

    public final b70 c() {
        return this.c;
    }

    public final vi1 d() {
        return this.a;
    }

    public final zi1 e() {
        return this.d;
    }
}
