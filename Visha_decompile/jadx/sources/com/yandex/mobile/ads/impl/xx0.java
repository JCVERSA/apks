package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xx0 implements y4 {
    private final o8<?> a;
    private final qx0<?> b;

    public xx0(o8<?> o8Var, qx0<?> qx0Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
        this.b = qx0Var;
    }

    @Override
    public final w1 a() {
        return new ey0(this.b, new dy0());
    }

    @Override
    public final s8 b() {
        return new by0(this.a);
    }
}
