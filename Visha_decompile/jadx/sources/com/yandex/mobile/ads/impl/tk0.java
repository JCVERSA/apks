package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;

public final class tk0 {
    private o8<?> a;
    private final o3 b;
    private final t4 c;
    private final sp1 d;
    private final ju1 e;
    private final wq f;
    private final id g;
    private x71 h;

    /* JADX WARN: Illegal instructions before constructor call */
    public tk0(Context context, o8 o8Var, o3 o3Var, t4 t4Var) {
        o3Var.q().f();
        s01 s01VarA = nd.a(context, jn2.a, o3Var.q().b());
        int i = pw1.l;
        this(context, o8Var, o3Var, t4Var, s01VarA, pw1.a.a().a(context), new wq(), new id(context));
    }

    private final pp1 a() {
        pp1 pp1VarA = this.f.a(this.a, this.b);
        pp1VarA.b(op1.a.a, "adapter");
        gz1 gz1VarR = this.b.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        ju1 ju1Var = this.e;
        if (ju1Var != null) {
            pp1VarA.b(ju1Var.m(), "banner_size_calculation_type");
        }
        x71 x71Var = this.h;
        return x71Var != null ? qp1.a(pp1VarA, x71Var.a()) : pp1VarA;
    }

    public final void b(op1.b bVar, n92 n92Var) {
        y45.j(bVar, "reportType");
        y45.j(n92Var, "validationResult");
        pp1 pp1VarA = a();
        pp1VarA.b(n92Var.b().a(), "reason");
        String strA = n92Var.a();
        if (strA != null && strA.length() > 0) {
            pp1VarA.b(strA, "asset_name");
        }
        op1 op1Var = new op1(bVar, (Map<String, ? extends Object>) pp1VarA.b(), pp1VarA.a());
        this.d.a(op1Var);
        this.g.a(bVar, op1Var.b(), op1.a.a, this.c);
    }

    public tk0(Context context, o8<?> o8Var, o3 o3Var, t4 t4Var, sp1 sp1Var, ju1 ju1Var, wq wqVar, id idVar) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(sp1Var, "metricaReporter");
        y45.j(wqVar, "commonReportDataProvider");
        y45.j(idVar, "metricaLibraryEventReporter");
        this.a = o8Var;
        this.b = o3Var;
        this.c = t4Var;
        this.d = sp1Var;
        this.e = ju1Var;
        this.f = wqVar;
        this.g = idVar;
    }

    public final void a(op1.b bVar, n92 n92Var) {
        y45.j(bVar, "reportType");
        y45.j(n92Var, "validationResult");
        pp1 pp1VarA = a();
        pp1VarA.b(n92Var.b().a(), "reason");
        String strA = n92Var.a();
        if (strA != null && strA.length() > 0) {
            pp1VarA.b(strA, "asset_name");
        }
        op1 op1Var = new op1(bVar, (Map<String, ? extends Object>) pp1VarA.b(), pp1VarA.a());
        this.d.a(op1Var);
        this.g.a(bVar, op1Var.b(), op1.a.a, this.c);
    }

    public final void a(op1.b bVar, Map<String, ? extends Object> map) {
        y45.j(bVar, "reportType");
        y45.j(map, "additionalReportData");
        pp1 pp1VarA = a();
        pp1VarA.a(map);
        op1 op1Var = new op1(bVar, (Map<String, ? extends Object>) pp1VarA.b(), pp1VarA.a());
        this.d.a(op1Var);
        this.g.a(bVar, op1Var.b(), op1.a.a, this.c);
    }

    public final void a(op1.b bVar) {
        y45.j(bVar, "reportType");
        pp1 pp1VarA = a();
        op1 op1Var = new op1(bVar, (Map<String, ? extends Object>) pp1VarA.b(), pp1VarA.a());
        this.d.a(op1Var);
        this.g.a(bVar, op1Var.b(), op1.a.a, this.c);
    }

    public final void a(x71 x71Var) {
        y45.j(x71Var, "reportParameterManager");
        this.h = x71Var;
    }

    public final void a(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
    }
}
