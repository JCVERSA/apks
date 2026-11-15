package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class i6 implements kp {
    private final g6 a;
    private final int b;

    public i6(g6 g6Var, int i) {
        y45.j(g6Var, "adPod");
        this.a = g6Var;
        this.b = i;
    }

    @Override
    public final boolean a() {
        return this.a.a() <= this.b;
    }
}
