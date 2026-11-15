package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class dm0 implements ld2.b {
    private final cc2 a;

    public dm0(go0 go0Var, cc2 cc2Var) {
        y45.j(go0Var, "videoAd");
        y45.j(cc2Var, "infoDataProvider");
        this.a = cc2Var;
    }

    @Override
    public final pp1 a() {
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        pp1Var.b(this.a.a(), "product_type");
        return pp1Var;
    }
}
