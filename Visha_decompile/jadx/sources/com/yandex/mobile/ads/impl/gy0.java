package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

public final class gy0 {
    private final o3 a;
    private final o8<?> b;
    private final fy0 c;
    private final vz0 d;
    private final yr1 e;

    public gy0(o3 o3Var, o8 o8Var) {
        this(o3Var, o8Var, new fy0(), new vz0(), new yr1());
    }

    public final void a(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.f, lz0Var, str, map);
    }

    public final void b(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.v, lz0Var, str, map);
    }

    public final void c(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.C, lz0Var, str, map);
    }

    public final void d(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "reportData");
        a(context, op1.b.x, lz0Var, str, map);
        a(context, op1.b.y, lz0Var, str, map);
    }

    public final void e(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.B, lz0Var, str, map);
    }

    public final void f(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.e, lz0Var, str, map);
    }

    public final void g(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "additionalReportData");
        a(context, op1.b.h, lz0Var, str, map);
    }

    public final void h(Context context, lz0 lz0Var, Map<String, ? extends Object> map, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(map, "reportData");
        a(context, op1.b.i, lz0Var, str, map);
    }

    private final void a(Context context, op1.b bVar, lz0 lz0Var, String str, Map<String, ? extends Object> map) {
        pp1 pp1VarA = this.c.a(this.b, this.a);
        this.d.getClass();
        y45.j(lz0Var, "mediationNetwork");
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        pp1Var.b(lz0Var.e(), "adapter");
        pp1Var.b(lz0Var.i(), "adapter_parameters");
        pp1 pp1VarA2 = qp1.a(pp1VarA, pp1Var);
        pp1VarA2.a(map);
        Map<String, Object> mapB = pp1VarA2.b();
        op1 op1Var = new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA2, bVar, "reportType", mapB, "reportData"));
        this.a.q().f();
        nd.a(context, jn2.a, this.a.q().b()).a(op1Var);
        new id(context).a(bVar, op1Var.b(), str, lz0Var.c());
    }

    public final void b(Context context, lz0 lz0Var, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        a(context, op1.b.g, lz0Var, str, kotlin.collections.a.l());
    }

    public gy0(o3 o3Var, o8<?> o8Var, fy0 fy0Var, vz0 vz0Var, yr1 yr1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(fy0Var, "mediatedAdapterReportDataProvider");
        y45.j(vz0Var, "mediationNetworkReportDataProvider");
        y45.j(yr1Var, "rewardInfoProvider");
        this.a = o3Var;
        this.b = o8Var;
        this.c = fy0Var;
        this.d = vz0Var;
        this.e = yr1Var;
    }

    public final void a(Context context, lz0 lz0Var, String str) {
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        a(context, op1.b.v, lz0Var, str, kotlin.collections.a.l());
    }

    public final void a(Context context, lz0 lz0Var, o8<?> o8Var, String str) {
        Map mapL;
        ur1 ur1VarJ;
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        this.e.getClass();
        Boolean boolValueOf = (o8Var == null || (ur1VarJ = o8Var.J()) == null) ? null : Boolean.valueOf(ur1VarJ.e());
        if (y45.e(boolValueOf, Boolean.TRUE)) {
            mapL = ky5.h(abb.a("rewarding_side", "server_side"));
        } else if (y45.e(boolValueOf, Boolean.FALSE)) {
            mapL = ky5.h(abb.a("rewarding_side", "client_side"));
        } else if (boolValueOf == null) {
            mapL = kotlin.collections.a.l();
        } else {
            throw new NoWhenBranchMatchedException();
        }
        a(context, op1.b.N, lz0Var, str, ky5.h(abb.a("reward_info", mapL)));
    }
}
