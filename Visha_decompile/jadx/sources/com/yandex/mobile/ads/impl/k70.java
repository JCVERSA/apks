package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Map;

public final class k70 {
    private final o8<?> a;
    private final ah b;
    private final sp1 c;

    public k70(Context context, o3 o3Var, y4 y4Var, ts tsVar, o8 o8Var, ah ahVar, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(tsVar, "adType");
        y45.j(o8Var, "adResponse");
        y45.j(ahVar, "assetViewsValidationReportParametersProvider");
        y45.j(sp1Var, "metricaReporter");
        this.a = o8Var;
        this.b = ahVar;
        this.c = sp1Var;
    }

    public final void a(ArrayList arrayList) {
        y45.j(arrayList, "assetNames");
        ah ahVar = this.b;
        ahVar.getClass();
        y45.j("no_view_for_asset", "reason");
        pp1 pp1VarA = ahVar.a();
        pp1VarA.b("no_view_for_asset", "reason");
        pp1VarA.b(arrayList, "assets");
        Map<String, Object> mapS = this.a.s();
        if (mapS != null) {
            pp1VarA.a((Map<String, ? extends Object>) mapS);
        }
        pp1VarA.a(this.a.a());
        op1.b bVar = op1.b.L;
        Map<String, Object> mapB = pp1VarA.b();
        this.c.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public k70(Context context, o3 o3Var, y4 y4Var, ts tsVar, o8 o8Var, String str) {
        ah ahVar = new ah(y4Var, tsVar, str);
        o3Var.q().f();
        this(context, o3Var, y4Var, tsVar, o8Var, ahVar, nd.a(context, jn2.a, o3Var.q().b()));
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.b.a(x71Var);
    }
}
