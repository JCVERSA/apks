package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class ep implements tp1 {
    private final o8<?> a;
    private final o3 b;
    private final z41 c;
    private final sp1 d;
    private final wq e;
    private final id f;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ep(Context context, o8 o8Var, o3 o3Var, z41 z41Var) {
        this(context, o8Var, o3Var, z41Var, nd.a(context, jn2.a, o3Var.q().b()), new wq(), new id(context));
        o3Var.q().f();
    }

    private final op1 a(op1.b bVar, HashMap map) {
        pp1 pp1Var = new pp1(map, 2);
        pp1Var.b(op1.a.a, "adapter");
        pp1 pp1VarA = qp1.a(pp1Var, this.e.a(this.a, this.b));
        gz1 gz1VarR = this.b.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        z41 z41Var = this.c;
        if (z41Var != null) {
            pp1VarA.a((Map<String, ? extends Object>) z41Var.a());
        }
        Map<String, Object> mapB = pp1VarA.b();
        return new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData"));
    }

    public ep(Context context, o8<?> o8Var, o3 o3Var, z41 z41Var, sp1 sp1Var, wq wqVar, id idVar) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(sp1Var, "metricaReporter");
        y45.j(wqVar, "commonReportDataProvider");
        y45.j(idVar, "metricaLibraryEventReporter");
        this.a = o8Var;
        this.b = o3Var;
        this.c = z41Var;
        this.d = sp1Var;
        this.e = wqVar;
        this.f = idVar;
    }

    @Override
    public final void a(op1.b bVar) {
        y45.j(bVar, "reportType");
        this.d.a(a(bVar, new HashMap()));
    }

    @Override
    public final void a(HashMap map) {
        op1.b bVar = op1.b.C;
        y45.j(bVar, "reportType");
        y45.j(map, "reportData");
        op1 op1VarA = a(bVar, map);
        this.d.a(op1VarA);
        this.f.a(bVar, op1VarA.b(), op1.a.a, null);
    }
}
