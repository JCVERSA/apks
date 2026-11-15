package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.LinkedHashMap;

public final class kd2 implements ch1 {
    private final bh1 a;

    public kd2(g5 g5Var) {
        this(g5Var, new bh1(g5Var));
    }

    @Override
    public final LinkedHashMap a() {
        return this.a.a(ye9.j(f5.w, f5.x));
    }

    public kd2(g5 g5Var, bh1 bh1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bh1Var, "phasesParametersExtractor");
        this.a = bh1Var;
    }
}
