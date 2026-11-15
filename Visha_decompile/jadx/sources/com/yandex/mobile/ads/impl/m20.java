package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class m20 {
    public static b10 a(q61 q61Var, zr zrVar, st stVar, uo uoVar, sp1 sp1Var) {
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(uoVar, "clickConnector");
        y45.j(sp1Var, "reporter");
        if (!(q61Var instanceof b02)) {
            return new m51(q61Var, zrVar, stVar, uoVar, sp1Var, new l41(), new r61(), new eh(r61.a(q61Var)));
        }
        b02 b02Var = (b02) q61Var;
        return new a02(b02Var, zrVar, stVar, uoVar, sp1Var, new l41(), new r61(), new eh(r61.b(b02Var)));
    }
}
