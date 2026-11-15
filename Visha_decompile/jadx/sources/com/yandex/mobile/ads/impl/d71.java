package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class d71 implements jr1 {
    private final o3 a;
    private final i81 b;
    private final vz0 c;
    private o8<y61> d;

    public d71(o3 o3Var) {
        this(o3Var, new v71(), new vz0());
    }

    @Override
    public final pp1 a() {
        pp1 pp1Var;
        pp1 pp1Var2 = new pp1((Map) null, 3);
        o8<y61> o8Var = this.d;
        if (o8Var == null) {
            return pp1Var2;
        }
        pp1 pp1VarA = qp1.a(pp1Var2, this.b.a(o8Var, this.a, o8Var.I()));
        lz0 lz0VarI = this.a.i();
        this.c.getClass();
        if (lz0VarI != null) {
            y45.j(lz0VarI, "mediationNetwork");
            pp1Var = new pp1(new LinkedHashMap(), 2);
            pp1Var.b(lz0VarI.e(), "adapter");
            pp1Var.b(lz0VarI.i(), "adapter_parameters");
        } else {
            pp1Var = new pp1(new LinkedHashMap(), 2);
            pp1Var.b(op1.a.a, "adapter");
        }
        return qp1.a(pp1VarA, pp1Var);
    }

    public d71(o3 o3Var, i81 i81Var, vz0 vz0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(i81Var, "commonReportDataProvider");
        y45.j(vz0Var, "mediationNetworkReportDataProvider");
        this.a = o3Var;
        this.b = i81Var;
        this.c = vz0Var;
    }

    public final void a(o8<y61> o8Var) {
        this.d = o8Var;
    }
}
