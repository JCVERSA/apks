package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class t7 {
    private final o8<?> a;
    private final o3 b;
    private final sg0 c;
    private final sp1 d;
    private final ch1 e;
    private final ju1 f;

    public t7(Context context, o8 o8Var, o3 o3Var, g5 g5Var, sg0 sg0Var) {
        o3Var.q().f();
        s01 s01VarA = nd.a(context, jn2.a, o3Var.q().b());
        s7 s7Var = new s7(g5Var);
        int i = pw1.l;
        this(context, o8Var, o3Var, g5Var, sg0Var, s01VarA, s7Var, pw1.a.a().a(context));
    }

    public final void a() {
        pp1 pp1VarA = this.c.a();
        pp1VarA.b(op1.a.a, "adapter");
        pp1VarA.a(this.e.a());
        gz1 gz1VarR = this.b.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        ju1 ju1Var = this.f;
        if (ju1Var != null) {
            pp1VarA.b(ju1Var.m(), "banner_size_calculation_type");
        }
        pp1VarA.a(this.a.a());
        op1.b bVar = op1.b.d;
        Map<String, Object> mapB = pp1VarA.b();
        this.d.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public t7(Context context, o8<?> o8Var, o3 o3Var, g5 g5Var, sg0 sg0Var, sp1 sp1Var, ch1 ch1Var, ju1 ju1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sg0Var, "reportParameterManager");
        y45.j(sp1Var, "metricaReporter");
        y45.j(ch1Var, "phasesParametersProvider");
        this.a = o8Var;
        this.b = o3Var;
        this.c = sg0Var;
        this.d = sp1Var;
        this.e = ch1Var;
        this.f = ju1Var;
    }
}
