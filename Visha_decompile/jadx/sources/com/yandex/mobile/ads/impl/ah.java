package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import java.util.Map;

public final class ah {
    private final ts a;
    private final String b;
    private final w1 c;
    private final s8 d;
    private x71 e;

    public ah(y4 y4Var, ts tsVar, String str) {
        this(y4Var, tsVar, str, y4Var.a(), y4Var.b());
    }

    public final pp1 a() {
        pp1 pp1VarA = this.d.a();
        pp1VarA.b(this.a.a(), TrackingKey.AD_TYPE);
        pp1VarA.a(this.b, "ad_id");
        pp1VarA.a((Map<String, ? extends Object>) this.c.a());
        x71 x71Var = this.e;
        return x71Var != null ? qp1.a(pp1VarA, x71Var.a()) : pp1VarA;
    }

    public ah(y4 y4Var, ts tsVar, String str, w1 w1Var, s8 s8Var) {
        y45.j(y4Var, "adInfoReportDataProviderFactory");
        y45.j(tsVar, "adType");
        y45.j(w1Var, "adAdapterReportDataProvider");
        y45.j(s8Var, "adResponseReportDataProvider");
        this.a = tsVar;
        this.b = str;
        this.c = w1Var;
        this.d = s8Var;
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.e = x71Var;
    }
}
