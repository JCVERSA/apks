package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class z9 {
    private final k62 a;

    public z9() {
        this(new k62());
    }

    public final fc1 a(g41 g41Var) {
        y45.j(g41Var, "nativeAd");
        k62 k62Var = this.a;
        List<ey1> listH = g41Var.h();
        k62Var.getClass();
        ArrayList arrayListA = k62.a(listH, null);
        k62 k62Var2 = this.a;
        List<String> listF = g41Var.f();
        k62Var2.getClass();
        return new fc1(g41Var.b(), arrayListA, k62.a(listF, null), g41Var.a(), g41Var.c());
    }

    public z9(k62 k62Var) {
        y45.j(k62Var, "trackingDataCreator");
        this.a = k62Var;
    }
}
