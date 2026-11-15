package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class uc2 implements ld2.b {
    private final o3 a;
    private final o8<?> b;
    private final i81 c;

    public uc2(o3 o3Var, o8 o8Var) {
        this(o3Var, o8Var, new v71());
    }

    @Override
    public final pp1 a() {
        Object objI = this.b.I();
        pp1 pp1VarA = this.c.a(this.b, this.a, objI instanceof y61 ? (y61) objI : null);
        pp1VarA.b(op1.a.a, "adapter");
        pp1VarA.a(this.b.a());
        return pp1VarA;
    }

    public uc2(o3 o3Var, o8<?> o8Var, i81 i81Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(i81Var, "commonReportDataProvider");
        this.a = o3Var;
        this.b = o8Var;
        this.c = i81Var;
    }
}
