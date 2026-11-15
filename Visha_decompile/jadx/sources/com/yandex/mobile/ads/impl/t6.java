package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class t6 implements bm1 {
    private final r9 a;
    private final vi1 b;
    private final b70 c;

    public t6(r9 r9Var, ti1 ti1Var, vi1 vi1Var, b70 b70Var) {
        y45.j(r9Var, "adStateHolder");
        y45.j(ti1Var, "playerStateController");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(b70Var, "playerProvider");
        this.a = r9Var;
        this.b = vi1Var;
        this.c = b70Var;
    }

    @Override
    public final ci1 a() {
        go0 go0VarD;
        com.google.android.exoplayer2.t tVarA;
        cj1 cj1VarC = this.a.c();
        if (cj1VarC == null || (go0VarD = cj1VarC.d()) == null) {
            return ci1.c;
        }
        boolean zC = this.b.c();
        wm0 wm0VarA = this.a.a(go0VarD);
        ci1 ci1Var = ci1.c;
        return (wm0.b == wm0VarA || !zC || (tVarA = this.c.a()) == null) ? ci1Var : new ci1(tVarA.getCurrentPosition(), tVarA.getDuration());
    }
}
