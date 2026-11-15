package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class ey0 implements w1 {
    private final qx0<?> a;
    private final dy0 b;

    public ey0(qx0<?> qx0Var, dy0 dy0Var) {
        y45.j(dy0Var, "mediatedAdapterInfoReportDataProvider");
        this.a = qx0Var;
        this.b = dy0Var;
    }

    @Override
    public final Map<String, Object> a() {
        pp1 pp1Var = new pp1((Map) null, 3);
        qx0<?> qx0Var = this.a;
        if (qx0Var != null) {
            lz0 lz0VarC = qx0Var.c();
            tx0 tx0VarA = this.a.a();
            pp1Var.b(lz0VarC.e(), "adapter");
            pp1Var.b(lz0VarC.i(), "adapter_parameters");
            this.b.getClass();
            pp1Var.a(new HashMap(dy0.a(tx0VarA)));
        }
        return pp1Var.b();
    }
}
