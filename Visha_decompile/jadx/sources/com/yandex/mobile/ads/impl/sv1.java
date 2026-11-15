package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.LinkedHashMap;

public final class sv1 implements ch1 {
    private final bh1 a;

    public sv1(g5 g5Var) {
        this(g5Var, new bh1(g5Var));
    }

    @Override
    public final LinkedHashMap a() {
        return this.a.a(ye9.j(f5.i, f5.j, f5.k, f5.m, f5.l, f5.n, f5.o, f5.B));
    }

    public sv1(g5 g5Var, bh1 bh1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bh1Var, "phasesParametersExtractor");
        this.a = bh1Var;
    }
}
