package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class qi2 implements dq1<ki2> {
    private final g5 a;
    private final dq1<ki2> b;

    public qi2(g5 g5Var, dq1<ki2> dq1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(dq1Var, "requestListener");
        this.a = g5Var;
        this.b = dq1Var;
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.a.a(f5.y);
        this.b.a(sb2Var);
    }

    @Override
    public final void a(ki2 ki2Var) {
        ki2 ki2Var2 = ki2Var;
        y45.j(ki2Var2, "vmap");
        this.a.a(f5.y);
        this.b.a(ki2Var2);
    }
}
