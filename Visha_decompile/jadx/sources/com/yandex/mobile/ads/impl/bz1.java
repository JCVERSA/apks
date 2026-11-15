package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.LinkedHashMap;

public final class bz1 implements i81 {
    private final g41 a;
    private final er1 b;
    private final c8 c;
    private final jr d;

    public bz1(g41 g41Var, er1 er1Var, c8 c8Var, jr jrVar) {
        y45.j(g41Var, PluginErrorDetails.Platform.NATIVE);
        y45.j(er1Var, "responseDataProvider");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(jrVar, "configurationReportDataProvider");
        this.a = g41Var;
        this.b = er1Var;
        this.c = c8Var;
        this.d = jrVar;
    }

    @Override
    public final pp1 a(o8 o8Var, o3 o3Var, y61 y61Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = this.b.a(o8Var, y61Var, o3Var, this.a);
        pp1 pp1VarA2 = this.c.a(o3Var.a());
        jr jrVar = this.d;
        jrVar.getClass();
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA3 = jrVar.a(o3Var);
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        pp1Var.b(Boolean.valueOf(o3Var.u()), "image_loading_automatically");
        return qp1.a(qp1.a(pp1VarA, pp1VarA2), qp1.a(pp1VarA3, pp1Var));
    }
}
