package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class v71 implements i81 {
    private final er1 a;
    private final c8 b;
    private final jr c;

    public v71() {
        this(new er1(), new c8(), new jr());
    }

    @Override
    public final pp1 a(o8 o8Var, o3 o3Var, y61 y61Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = this.a.a(o8Var, o3Var, y61Var);
        pp1 pp1VarA2 = this.b.a(o3Var.a());
        jr jrVar = this.c;
        jrVar.getClass();
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA3 = jrVar.a(o3Var);
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        pp1Var.b(Boolean.valueOf(o3Var.u()), "image_loading_automatically");
        return qp1.a(qp1.a(pp1VarA, pp1VarA2), qp1.a(pp1VarA3, pp1Var));
    }

    public v71(er1 er1Var, c8 c8Var, jr jrVar) {
        y45.j(er1Var, "responseDataProvider");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(jrVar, "configurationReportDataProvider");
        this.a = er1Var;
        this.b = c8Var;
        this.c = jrVar;
    }
}
