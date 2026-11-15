package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

public final class ro1 {
    private final o3 a;
    private final o8<?> b;
    private final s9 c;
    private final sp1 d;
    private final ju1 e;
    private final wq f;
    private u91 g;

    /* JADX WARN: Illegal instructions before constructor call */
    public ro1(Context context, o3 o3Var, o8 o8Var, s9 s9Var) {
        o3Var.q().f();
        s01 s01VarA = nd.a(context, jn2.a, o3Var.q().b());
        int i = pw1.l;
        this(context, o3Var, o8Var, s9Var, s01VarA, pw1.a.a().a(context), new wq());
    }

    public final void a() {
        List listN;
        pp1 pp1VarA = this.f.a(this.b, this.a);
        pp1VarA.b(op1.a.a, "adapter");
        u91 u91Var = this.g;
        if (u91Var != null) {
            pp1VarA.a((Map<String, ? extends Object>) u91Var.a());
        }
        gz1 gz1VarR = this.a.r();
        if (gz1VarR != null) {
            pp1VarA.b(gz1VarR.a().a(), "size_type");
            pp1VarA.b(Integer.valueOf(gz1VarR.getWidth()), "width");
            pp1VarA.b(Integer.valueOf(gz1VarR.getHeight()), "height");
        }
        ju1 ju1Var = this.e;
        if (ju1Var != null) {
            pp1VarA.b(ju1Var.m(), "banner_size_calculation_type");
        }
        int iOrdinal = this.c.ordinal();
        if (iOrdinal == 0) {
            listN = defpackage.y71.n(op1.b.w, op1.b.v);
        } else if (iOrdinal == 1) {
            listN = defpackage.x71.e(op1.b.w);
        } else {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            listN = defpackage.x71.e(op1.b.v);
        }
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            this.d.a(new op1((op1.b) it.next(), (Map<String, ? extends Object>) pp1VarA.b(), pp1VarA.a()));
        }
    }

    public ro1(Context context, o3 o3Var, o8<?> o8Var, s9 s9Var, sp1 sp1Var, ju1 ju1Var, wq wqVar) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(s9Var, "adStructureType");
        y45.j(sp1Var, "metricaReporter");
        y45.j(wqVar, "commonReportDataProvider");
        this.a = o3Var;
        this.b = o8Var;
        this.c = s9Var;
        this.d = sp1Var;
        this.e = ju1Var;
        this.f = wqVar;
    }

    public final void a(u91 u91Var) {
        this.g = u91Var;
    }
}
