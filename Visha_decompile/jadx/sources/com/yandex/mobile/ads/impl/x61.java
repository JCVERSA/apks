package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class x61 extends ek<y61> {
    private final b71 c;

    public x61() {
        this(new ba1(), new b71());
    }

    @Override
    public final pp1 a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA2 = super.a2(o3Var);
        pp1VarA2.b(Boolean.valueOf(o3Var.u()), "image_loading_automatically");
        List<String> listM = o3Var.m();
        if (!listM.isEmpty()) {
            pp1VarA2.b(listM, "image_sizes");
        }
        return pp1VarA2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x61(ba1 ba1Var, b71 b71Var) {
        super(ba1Var);
        y45.j(ba1Var, "nativeResponseReportDataProvider");
        y45.j(b71Var, "nativeAdResponseDataProvider");
        this.c = b71Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final pp1 a(int i, o3 o3Var, xq1 xq1Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = super.a(i, o3Var, xq1Var);
        op1.c cVar = null;
        o8 o8Var = xq1Var != null ? (o8) xq1Var.a : null;
        if (204 == i) {
            cVar = op1.c.e;
        } else if (o8Var != null && i == 200) {
            this.c.getClass();
            y45.j(o8Var, "adResponse");
            y61 y61Var = (y61) o8Var.I();
            if (y61Var != null) {
                cVar = (op1.c) y61Var.f().get("status");
            } else if (o8Var.D() == null) {
                cVar = op1.c.d;
            }
        } else {
            cVar = op1.c.d;
        }
        if (cVar != null) {
            pp1VarA.b(cVar.a(), "status");
        }
        return pp1VarA;
    }
}
