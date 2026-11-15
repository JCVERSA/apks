package com.yandex.mobile.ads.impl;

import defpackage.xe9;
import defpackage.y45;
import java.util.LinkedHashMap;

public final class s7 implements ch1 {
    private final bh1 a;

    public s7(g5 g5Var) {
        this(g5Var, new bh1(g5Var));
    }

    @Override
    public final LinkedHashMap a() {
        return this.a.a(xe9.d(f5.f));
    }

    public s7(g5 g5Var, bh1 bh1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bh1Var, "phasesParametersExtractor");
        this.a = bh1Var;
    }
}
