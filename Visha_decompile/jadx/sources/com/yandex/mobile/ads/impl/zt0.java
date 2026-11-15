package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class zt0 implements aj1 {
    private final jm0 a;
    private final gt b;

    public zt0(jm0 jm0Var, gt gtVar) {
        y45.j(jm0Var, "instreamAdPlayerController");
        y45.j(gtVar, "instreamAdBreak");
        this.a = jm0Var;
        this.b = gtVar;
    }

    @Override
    public final float getVolume() {
        go0 go0Var = (go0) defpackage.i81.q0(this.b.g());
        if (go0Var != null) {
            return this.a.c(go0Var);
        }
        return 0.0f;
    }
}
