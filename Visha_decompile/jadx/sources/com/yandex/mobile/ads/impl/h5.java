package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.LinkedHashMap;

public final class h5 implements ch1 {
    private final bh1 a;

    public h5(g5 g5Var) {
        this(g5Var, new bh1(g5Var));
    }

    @Override
    public final LinkedHashMap a() {
        return this.a.a(ye9.j(f5.c, f5.d, f5.e, f5.g, f5.h, f5.i, f5.j, f5.k, f5.m, f5.l, f5.n, f5.o, f5.p, f5.q, f5.r, f5.s, f5.t, f5.u, f5.v, f5.y, f5.B));
    }

    public h5(g5 g5Var, bh1 bh1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bh1Var, "phasesParametersExtractor");
        this.a = bh1Var;
    }
}
