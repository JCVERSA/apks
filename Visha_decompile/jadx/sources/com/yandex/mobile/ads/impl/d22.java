package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class d22 {
    private final ic a;

    public d22(ic icVar) {
        y45.j(icVar, "advertiserPresentController");
        this.a = icVar;
    }

    public final c22 a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        if (zb2Var.f() != null) {
            return c22.c;
        }
        return this.a.a() ? c22.d : c22.b;
    }
}
