package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class fo1 {
    private final o8<?> a;
    private final sp1 b;
    private final ah c;
    private boolean d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public fo1(Context context, o3 o3Var, y4 y4Var, ts tsVar, o8 o8Var, String str) {
        this(context, o3Var, y4Var, tsVar, o8Var, str, nd.a(context, jn2.a, o3Var.q().b()));
        o3Var.q().f();
    }

    public final void a() {
        if (this.d) {
            this.d = false;
            return;
        }
        pp1 pp1VarA = this.c.a();
        Map<String, Object> mapS = this.a.s();
        if (mapS != null) {
            pp1VarA.a((Map<String, ? extends Object>) mapS);
        }
        pp1VarA.a(this.a.a());
        op1.b bVar = op1.b.J;
        Map<String, Object> mapB = pp1VarA.b();
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public fo1(Context context, o3 o3Var, y4 y4Var, ts tsVar, o8<?> o8Var, String str, sp1 sp1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(tsVar, "adType");
        y45.j(o8Var, "adResponse");
        y45.j(sp1Var, "metricaReporter");
        this.a = o8Var;
        this.b = sp1Var;
        this.c = new ah(y4Var, tsVar, str);
        this.d = true;
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.c.a(x71Var);
    }
}
