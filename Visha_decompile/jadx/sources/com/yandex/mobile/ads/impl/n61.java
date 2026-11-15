package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class n61 {
    private final de2 a;
    private final o31 b;

    public n61() {
        this(new de2(), new o31());
    }

    public final xt a(ex0 ex0Var) {
        if (ex0Var != null) {
            lb2 lb2VarC = ex0Var.c();
            List<xj0> listA = ex0Var.a();
            wu0 wu0VarB = ex0Var.b();
            if (lb2VarC != null) {
                de2 de2Var = this.a;
                zb2<kb1> zb2VarB = lb2VarC.b();
                de2Var.getClass();
                y45.j(zb2VarB, "videoAdInfo");
                kb1 kb1VarD = zb2VarB.d();
                return new xt(kb1VarD.getAdHeight() != 0 ? kb1VarD.getAdWidth() / kb1VarD.getAdHeight() : 1.7777778f);
            }
            if (listA != null && listA.size() > 1) {
                this.b.getClass();
                return new xt((float) o31.a(listA));
            }
            if (wu0VarB != null) {
                return new xt(wu0VarB.a());
            }
        }
        return null;
    }

    public n61(de2 de2Var, o31 o31Var) {
        y45.j(de2Var, "aspectRatioProvider");
        y45.j(o31Var, "multiBannerRatioProvider");
        this.a = de2Var;
        this.b = o31Var;
    }
}
