package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class v0 {
    private final sp1 a;
    private final wq b;

    public v0(sp1 sp1Var) {
        this(sp1Var, new wq());
    }

    public final void a(Throwable th) {
        y45.j(th, "throwable");
        this.a.reportError("Failed to register ActivityResult", th);
    }

    public v0(sp1 sp1Var, wq wqVar) {
        y45.j(sp1Var, "reporter");
        y45.j(wqVar, "commonReportDataProvider");
        this.a = sp1Var;
        this.b = wqVar;
    }

    public final void a(c1 c1Var) {
        y45.j(c1Var, "adActivityData");
        pp1 pp1VarA = this.b.a(c1Var.c(), c1Var.b());
        op1.b bVar = op1.b.c0;
        Map<String, Object> mapB = pp1VarA.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }
}
