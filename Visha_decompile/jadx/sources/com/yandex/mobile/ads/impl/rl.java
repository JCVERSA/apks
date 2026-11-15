package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class rl {
    private final o8<?> a;
    private final sp1 b;
    private final ah c;

    public rl(y4 y4Var, ts tsVar, o8 o8Var, sp1 sp1Var, ah ahVar) {
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(tsVar, "adType");
        y45.j(o8Var, "adResponse");
        y45.j(sp1Var, "metricaReporter");
        y45.j(ahVar, "assetViewsValidationReportParametersProvider");
        this.a = o8Var;
        this.b = sp1Var;
        this.c = ahVar;
    }

    public final void a(String str) {
        ah ahVar = this.c;
        ahVar.getClass();
        y45.j("no_view_for_asset", "reason");
        pp1 pp1VarA = ahVar.a();
        pp1VarA.b("no_view_for_asset", "reason");
        pp1VarA.b(str, "asset_name");
        Map<String, Object> mapS = this.a.s();
        if (mapS != null) {
            pp1VarA.a((Map<String, ? extends Object>) mapS);
        }
        pp1VarA.a(this.a.a());
        op1.b bVar = op1.b.K;
        Map<String, Object> mapB = pp1VarA.b();
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public rl(y4 y4Var, ts tsVar, o8 o8Var, String str, sp1 sp1Var) {
        this(y4Var, tsVar, o8Var, sp1Var, new ah(y4Var, tsVar, str));
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.c.a(x71Var);
    }
}
