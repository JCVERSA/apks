package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class d91 implements jj0.a {
    private final boolean a;

    public d91(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = y45.e(o8Var.E(), c91.c.a()) || y45.e(o8Var.E(), c91.d.a());
    }

    @Override
    public final boolean a() {
        return this.a;
    }
}
