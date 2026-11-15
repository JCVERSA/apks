package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class we1 {
    public static ga2 a(od2 od2Var, ad2 ad2Var) {
        oj1 oj1Var;
        y45.j(ad2Var, "videoAdPosition");
        y45.j(ad2Var, "videoAdPosition");
        int iOrdinal = ad2Var.ordinal();
        if (iOrdinal == 0) {
            oj1Var = oj1.c;
        } else if (iOrdinal == 1) {
            oj1Var = oj1.d;
        } else if (iOrdinal != 2) {
            oj1Var = iOrdinal != 3 ? oj1.f : oj1.f;
        } else {
            oj1Var = oj1.e;
        }
        if (od2Var != null) {
            ga2 ga2VarA = ga2.a(od2Var.a() / 1000, oj1Var);
            y45.g(ga2VarA);
            return ga2VarA;
        }
        ga2 ga2VarA2 = ga2.a(oj1Var);
        y45.g(ga2VarA2);
        return ga2VarA2;
    }
}
