package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class hc {
    private final zb2<go0> a;
    private final ic b;

    public hc(zb2<go0> zb2Var, ic icVar) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(icVar, "advertiserPresentController");
        this.a = zb2Var;
        this.b = icVar;
    }

    public final gc a() {
        c22 c22VarA = new d22(this.b).a(this.a);
        i12 i12VarF = this.a.f();
        if (c22.c != c22VarA || i12VarF == null) {
            return c22.d == c22VarA ? new c50() : new az();
        }
        return new h12(i12VarF);
    }
}
