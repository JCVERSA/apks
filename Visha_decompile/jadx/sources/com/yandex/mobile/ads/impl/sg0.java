package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.HashMap;
import java.util.LinkedHashMap;

public final class sg0 implements jr1 {
    private final wq a;
    private final vz0 b;
    private o8<String> c;
    private o3 d;

    public sg0() {
        this(new wq(), new vz0());
    }

    @Override
    public final pp1 a() {
        pp1 pp1Var;
        pp1 pp1Var2 = new pp1(new HashMap(), 2);
        o8<String> o8Var = this.c;
        o3 o3Var = this.d;
        if (o8Var == null || o3Var == null) {
            return pp1Var2;
        }
        pp1 pp1VarA = qp1.a(pp1Var2, this.a.a(o8Var, o3Var));
        lz0 lz0VarI = o3Var.i();
        this.b.getClass();
        if (lz0VarI != null) {
            y45.j(lz0VarI, "mediationNetwork");
            pp1Var = new pp1(new LinkedHashMap(), 2);
            pp1Var.b(lz0VarI.e(), "adapter");
            pp1Var.b(lz0VarI.i(), "adapter_parameters");
        } else {
            pp1Var = new pp1(new LinkedHashMap(), 2);
            pp1Var.b(op1.a.a, "adapter");
        }
        pp1 pp1VarA2 = qp1.a(pp1VarA, pp1Var);
        pp1VarA2.b(o8Var.M().a().a(), "size_type");
        pp1VarA2.b(Integer.valueOf(o8Var.M().getWidth()), "width");
        pp1VarA2.b(Integer.valueOf(o8Var.M().getHeight()), "height");
        return pp1VarA2;
    }

    public sg0(wq wqVar, vz0 vz0Var) {
        y45.j(wqVar, "commonReportDataProvider");
        y45.j(vz0Var, "mediationReportDataProvider");
        this.a = wqVar;
        this.b = vz0Var;
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.d = o3Var;
    }

    public final void a(o8<String> o8Var) {
        y45.j(o8Var, "adResponse");
        this.c = o8Var;
    }
}
