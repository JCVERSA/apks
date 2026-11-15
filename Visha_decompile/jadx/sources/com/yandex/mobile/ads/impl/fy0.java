package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class fy0 {
    private final wq a;
    private final i81 b;

    public fy0() {
        this(new wq(), new v71());
    }

    public final pp1 a(o8<?> o8Var, o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        if ((o8Var != null ? o8Var.v() : null) != is.c) {
            return this.a.a(o8Var, o3Var);
        }
        Object objI = o8Var.I();
        return this.b.a(o8Var, o3Var, objI instanceof y61 ? (y61) objI : null);
    }

    public fy0(wq wqVar, i81 i81Var) {
        y45.j(wqVar, "commonReportDataProvider");
        y45.j(i81Var, "nativeCommonReportDataProvider");
        this.a = wqVar;
        this.b = i81Var;
    }
}
