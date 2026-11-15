package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Locale;
import java.util.Map;

public final class ph2 {
    private final c8 a;
    private final sp1 b;
    private final of1 c;

    public ph2(Context context, o3 o3Var) {
        c8 c8Var = new c8();
        o3Var.q().f();
        this(context, o3Var, c8Var, nd.a(context, jn2.a, o3Var.q().b()), new of1());
    }

    public final void a(nh2 nh2Var, o3 o3Var) {
        String str;
        gz1.a aVarA;
        y45.j(nh2Var, "viewSizeInfo");
        y45.j(o3Var, "adConfiguration");
        v7 v7VarA = o3Var.a();
        pp1 pp1VarA = v7VarA != null ? this.a.a(v7VarA) : new pp1((Map) null, 3);
        v7 v7VarA2 = o3Var.a();
        if (v7VarA2 != null) {
            qp1.a(pp1VarA, this.a.a(v7VarA2));
        }
        pp1VarA.b(o3Var.c(), "ad_unit_id");
        pp1VarA.b(o3Var.c(), "block_id");
        of1 of1Var = this.c;
        int iO = o3Var.o();
        of1Var.getClass();
        if (iO != 1) {
            str = iO != 2 ? "undefined" : "landscape";
        } else {
            str = "portrait";
        }
        pp1VarA.b(str, "orientation");
        gz1 gz1VarR = o3Var.r();
        pp1VarA.a((gz1VarR == null || (aVarA = gz1VarR.a()) == null) ? null : aVarA.a(), "size_type");
        gz1 gz1VarR2 = o3Var.r();
        pp1VarA.a(gz1VarR2 != null ? Integer.valueOf(gz1VarR2.getWidth()) : null, "size_info_width");
        gz1 gz1VarR3 = o3Var.r();
        pp1VarA.a(gz1VarR3 != null ? Integer.valueOf(gz1VarR3.getHeight()) : null, "size_info_height");
        pp1VarA.b(Integer.valueOf(nh2Var.d().b()), "view_width");
        pp1VarA.b(Integer.valueOf(nh2Var.d().a()), "view_height");
        pp1VarA.a(nh2Var.b().b(), "layout_width");
        pp1VarA.a(nh2Var.b().a(), "layout_height");
        pp1VarA.b(Integer.valueOf(nh2Var.c().b().b()), "measured_width");
        String strName = nh2Var.c().b().a().name();
        Locale locale = Locale.ROOT;
        String lowerCase = strName.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        pp1VarA.b(lowerCase, "measured_width_mode");
        pp1VarA.b(Integer.valueOf(nh2Var.c().a().b()), "measured_height");
        String lowerCase2 = nh2Var.c().a().a().name().toLowerCase(locale);
        y45.i(lowerCase2, "toLowerCase(...)");
        pp1VarA.b(lowerCase2, "measured_height_mode");
        op1.b bVar = op1.b.Q;
        Map<String, Object> mapB = pp1VarA.b();
        this.b.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA, bVar, "reportType", mapB, "reportData")));
    }

    public ph2(Context context, o3 o3Var, c8 c8Var, sp1 sp1Var, of1 of1Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(sp1Var, "metricaReporter");
        y45.j(of1Var, "orientationNameProvider");
        this.a = c8Var;
        this.b = sp1Var;
        this.c = of1Var;
    }
}
