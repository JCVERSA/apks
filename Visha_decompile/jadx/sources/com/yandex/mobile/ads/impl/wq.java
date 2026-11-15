package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class wq {
    private final er1 a;
    private final c8 b;
    private final jr c;

    public wq() {
        this(new er1(), new c8(), new jr());
    }

    public final pp1 a(o8<?> o8Var, o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarB = this.a.b(o8Var, o3Var);
        pp1 pp1VarA = this.b.a(o3Var.a());
        return qp1.a(qp1.a(pp1VarB, pp1VarA), this.c.a(o3Var));
    }

    public wq(er1 er1Var, c8 c8Var, jr jrVar) {
        y45.j(er1Var, "responseDataProvider");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(jrVar, "configurationReportDataProvider");
        this.a = er1Var;
        this.b = c8Var;
        this.c = jrVar;
    }
}
