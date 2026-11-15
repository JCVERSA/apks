package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class wi2 implements vi2 {
    private final ui2 a;
    private final zc1 b;

    public wi2(ui2 ui2Var, zc1 zc1Var) {
        y45.j(ui2Var, "volleyMapper");
        y45.j(zc1Var, "networkResponseDecoder");
        this.a = ui2Var;
        this.b = zc1Var;
    }

    @Override
    public final String a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        this.a.getClass();
        return this.b.a(ui2.a(xc1Var));
    }
}
