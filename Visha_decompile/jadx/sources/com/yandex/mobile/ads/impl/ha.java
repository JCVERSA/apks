package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class ha {
    private final k62 a;

    public ha() {
        this(new k62());
    }

    public final fc1 a(s41 s41Var) {
        y45.j(s41Var, "nativeAdBlock");
        y61 y61VarC = s41Var.c();
        List<ig<?>> listB = y61VarC.b();
        k62 k62Var = this.a;
        List<ey1> listI = y61VarC.i();
        k62Var.getClass();
        ArrayList arrayListA = k62.a(null, listI);
        k62 k62Var2 = this.a;
        List<String> listG = y61VarC.g();
        k62Var2.getClass();
        return new fc1(listB, arrayListA, k62.a(null, listG), "ad_unit", y61VarC.d());
    }

    public ha(k62 k62Var) {
        y45.j(k62Var, "trackingDataCreator");
        this.a = k62Var;
    }
}
