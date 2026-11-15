package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class u71 {
    private final o8<?> a;
    private final y61 b;
    private final o3 c;
    private final i81 d;

    public u71(o8 o8Var, y61 y61Var, o3 o3Var) {
        this(o8Var, y61Var, o3Var, new v71());
    }

    public final pp1 a() {
        return this.d.a(this.a, this.c, this.b);
    }

    public u71(o8<?> o8Var, y61 y61Var, o3 o3Var, i81 i81Var) {
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(i81Var, "commonReportDataProvider");
        this.a = o8Var;
        this.b = y61Var;
        this.c = o3Var;
        this.d = i81Var;
    }
}
