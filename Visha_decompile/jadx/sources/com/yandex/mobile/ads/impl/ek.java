package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public abstract class ek<T> implements lq1<o3, o8<T>> {
    private final c8 a;
    private final q8<T> b;

    public interface a<K> {
        pp1 a(xq1<o8<K>> xq1Var, o3 o3Var);
    }

    public ek(a<T> aVar) {
        y45.j(aVar, "responseReportDataProvider");
        this.a = new c8();
        this.b = new q8<>(aVar);
    }

    @Override
    public final op1 a(o3 o3Var) {
        o3 o3Var2 = o3Var;
        y45.j(o3Var2, "adConfiguration");
        pp1 pp1VarA2 = a2(o3Var2);
        op1.b bVar = op1.b.k;
        Map<String, Object> mapB = pp1VarA2.b();
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA2, bVar, "reportType", mapB, "reportData"));
    }

    public pp1 a2(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1Var = new pp1(new HashMap(), 2);
        v7 v7VarA = o3Var.a();
        if (v7VarA != null) {
            pp1Var = qp1.a(pp1Var, this.a.a(v7VarA));
        }
        pp1Var.b(o3Var.c(), "block_id");
        pp1Var.b(o3Var.c(), "ad_unit_id");
        pp1Var.b(o3Var.b().a(), TrackingKey.AD_TYPE);
        gz1 gz1VarR = o3Var.r();
        if (gz1VarR != null) {
            pp1Var.b(gz1VarR.a().a(), "size_type");
        }
        pp1Var.b(Boolean.valueOf(o3Var.t() == p82.a.c), "is_passback");
        return pp1Var;
    }

    @Override
    public final op1 a(xq1 xq1Var, int i, o3 o3Var) {
        o3 o3Var2 = o3Var;
        y45.j(o3Var2, "adConfiguration");
        pp1 pp1VarA = a(i, o3Var2, xq1Var);
        op1.b bVar = op1.b.l;
        Map<String, Object> mapB = pp1VarA.b();
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData"));
    }

    public pp1 a(int i, o3 o3Var, xq1 xq1Var) {
        y45.j(o3Var, "adConfiguration");
        return this.b.a(i, o3Var, xq1Var);
    }
}
