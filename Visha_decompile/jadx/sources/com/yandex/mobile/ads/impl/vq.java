package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class vq {
    public static ar a(q61 q61Var, zr zrVar, st stVar, b10 b10Var, sp1 sp1Var) {
        y45.j(q61Var, "nativeAd");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(b10Var, "adTypeSpecificBinder");
        y45.j(sp1Var, "reporter");
        rt adAssets = q61Var.getAdAssets();
        return new ar(new be0(q61Var, zrVar, stVar, sp1Var, new eh(defpackage.y71.k()), new k41()), new yc(adAssets, new n51()), new xv0(adAssets, new a51()), new nn1(adAssets, new on1(), new h41(), new a51()), b10Var);
    }
}
