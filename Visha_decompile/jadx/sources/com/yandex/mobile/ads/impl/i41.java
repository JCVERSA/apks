package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Map;

public final class i41 {
    private final s01 a;
    private final ah b;

    public i41(Context context, o3 o3Var, y4 y4Var, ts tsVar, String str) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(tsVar, "adType");
        o3Var.q().f();
        this.a = nd.a(context, jn2.a, o3Var.q().b());
        this.b = new ah(y4Var, tsVar, str);
    }

    public final void a(ArrayList arrayList, op1.b bVar) {
        y45.j(arrayList, "assetNames");
        y45.j(bVar, "reportType");
        pp1 pp1VarA = this.b.a();
        pp1VarA.b(arrayList, "assets");
        Map<String, Object> mapB = pp1VarA.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.b.a(x71Var);
    }
}
