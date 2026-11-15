package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class qc2 {
    private final uc2 a;
    private final sp1 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public qc2(Context context, o3 o3Var, uc2 uc2Var) {
        this(context, o3Var, uc2Var, nd.a(context, jn2.a, o3Var.q().b()));
        o3Var.q().f();
    }

    public final void a() {
        op1.b bVar = op1.b.r;
        pp1 pp1VarA = this.a.a();
        Map<String, Object> mapB = pp1VarA.b();
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public final void b() {
        op1.b bVar = op1.b.q;
        pp1 pp1VarA = this.a.a();
        Map<String, Object> mapB = pp1VarA.b();
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public qc2(Context context, o3 o3Var, uc2 uc2Var, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(uc2Var, "reportParametersProvider");
        y45.j(sp1Var, "metricaReporter");
        this.a = uc2Var;
        this.b = sp1Var;
    }
}
