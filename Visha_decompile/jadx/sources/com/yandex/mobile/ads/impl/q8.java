package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;

public final class q8<T> {
    private final ek.a<T> a;

    public q8(ek.a<T> aVar) {
        y45.j(aVar, "responseReportDataProvider");
        this.a = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0061  */
    public final pp1 a(int i, o3 o3Var, xq1 xq1Var) {
        String str;
        o8 o8Var;
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = this.a.a(xq1Var, o3Var);
        gz1 gz1VarR = o3Var.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        pp1VarA.b(Integer.valueOf(i), i == -1 ? "error_code" : TrackingKey.CODE);
        if (xq1Var == null || (o8Var = (o8) xq1Var.a) == null) {
            str = "empty";
        } else if (o8Var.D() != null) {
            str = "mediation";
        } else if (o8Var.I() != null) {
            str = "ad";
        } else {
            str = "empty";
        }
        pp1VarA.b(str, "response_type");
        if (xq1Var != null) {
            o8 o8Var2 = (o8) xq1Var.a;
            pp1VarA.a(o8Var2 != null ? o8Var2.a() : null);
        }
        return pp1VarA;
    }
}
