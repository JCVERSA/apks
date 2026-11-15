package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class ef1 {
    private final sp1 a;
    private final cl b;
    private final ch1 c;

    public ef1(g5 g5Var, sp1 sp1Var, cl clVar, ch1 ch1Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sp1Var, "reporter");
        y45.j(clVar, "reportDataProvider");
        y45.j(ch1Var, "phasesParametersProvider");
        this.a = sp1Var;
        this.b = clVar;
        this.c = ch1Var;
    }

    public final void a(dl dlVar) {
        y45.j("Cannot load bidder token. Token generation failed", "reason");
        this.b.getClass();
        pp1 pp1VarA = cl.a(dlVar);
        pp1VarA.b(op1.c.d.a(), "status");
        pp1VarA.b("Cannot load bidder token. Token generation failed", "failure_reason");
        pp1VarA.b(this.c.a(), "durations");
        op1.b bVar = op1.b.W;
        Map<String, Object> mapB = pp1VarA.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public final void a(dl dlVar, hu1 hu1Var) {
        this.b.getClass();
        pp1 pp1VarA = cl.a(dlVar);
        pp1VarA.b(op1.c.c.a(), "status");
        pp1VarA.b(this.c.a(), "durations");
        pp1VarA.a(hu1Var != null ? hu1Var.a() : null, "stub_reason");
        op1.b bVar = op1.b.W;
        Map<String, Object> mapB = pp1VarA.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }
}
