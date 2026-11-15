package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class kn0 {
    private final gt a;
    private final zb2<go0> b;

    public kn0(gt gtVar, zb2<go0> zb2Var) {
        y45.j(gtVar, "adBreak");
        y45.j(zb2Var, "videoAdInfo");
        this.a = gtVar;
        this.b = zb2Var;
    }

    public final String a() {
        int iA = this.b.d().b().a();
        return "yma_" + this.a + "_position_" + iA;
    }
}
