package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class r22 {
    private final sp1 a;

    public r22(sp1 sp1Var) {
        y45.j(sp1Var, "reporter");
        this.a = sp1Var;
    }

    public final void a(gl0 gl0Var) {
        y45.j(gl0Var, "initializationCallSource");
        sp1 sp1Var = this.a;
        op1.b bVar = op1.b.b0;
        Map mapH = ky5.h(abb.a("call_source", gl0Var.a()));
        y45.j(bVar, "reportType");
        y45.j(mapH, "reportData");
        sp1Var.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapH), (f) null));
    }
}
