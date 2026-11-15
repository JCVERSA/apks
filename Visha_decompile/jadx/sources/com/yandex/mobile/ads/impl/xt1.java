package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;

public final class xt1 {
    private final o3 a;
    private final c8 b;
    private final wq c;

    public xt1(o3 o3Var) {
        this(o3Var, new c8(), new wq());
    }

    private final void a(Context context, o8<?> o8Var, op1.b bVar, pp1 pp1Var) {
        g41 g41Var;
        gr1 gr1VarG;
        pp1 pp1VarA = this.b.a(this.a.a());
        pp1VarA.b(o8Var.p(), "ad_unit_id");
        pp1VarA.b(o8Var.p(), "block_id");
        String str = op1.a.a;
        pp1VarA.b(str, "adapter");
        ts tsVarN = o8Var.n();
        pp1VarA.b(tsVarN != null ? tsVarN.a() : null, TrackingKey.AD_TYPE);
        Object objI = o8Var.I();
        if (objI instanceof y61) {
            List<g41> listE = ((y61) objI).e();
            String strA = (listE == null || (g41Var = (g41) defpackage.i81.q0(listE)) == null || (gr1VarG = g41Var.g()) == null) ? null : gr1VarG.a();
            if (strA == null) {
                strA = "";
            }
            pp1VarA.b(strA, "native_ad_type");
        }
        pp1VarA.b(o8Var.m(), "ad_source");
        pp1 pp1VarA2 = qp1.a(pp1VarA, pp1Var);
        Map<String, Object> mapB = pp1VarA2.b();
        op1 op1Var = new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1VarA2, bVar, "reportType", mapB, "reportData"));
        this.a.q().f();
        nd.a(context, jn2.a, this.a.q().b()).a(op1Var);
        new id(context).a(bVar, op1Var.b(), str, null);
    }

    public final void b(Context context, o8<?> o8Var) {
        Map mapL;
        ur1 ur1VarJ;
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        Boolean boolValueOf = null;
        pp1 pp1Var = new pp1((Map) null, 3);
        if (o8Var != null && (ur1VarJ = o8Var.J()) != null) {
            boolValueOf = Boolean.valueOf(ur1VarJ.e());
        }
        if (y45.e(boolValueOf, Boolean.TRUE)) {
            mapL = ky5.h(abb.a("rewarding_side", "server_side"));
        } else if (y45.e(boolValueOf, Boolean.FALSE)) {
            mapL = ky5.h(abb.a("rewarding_side", "client_side"));
        } else {
            if (boolValueOf != null) {
                throw new NoWhenBranchMatchedException();
            }
            mapL = kotlin.collections.a.l();
        }
        pp1Var.b(mapL, "reward_info");
        a(context, o8Var, op1.b.N, pp1Var);
    }

    public xt1(o3 o3Var, c8 c8Var, wq wqVar) {
        y45.j(o3Var, "adConfiguration");
        y45.j(c8Var, "adRequestReportDataProvider");
        y45.j(wqVar, "commonReportDataProvider");
        this.a = o3Var;
        this.b = c8Var;
        this.c = wqVar;
    }

    public final void a(Context context, o8<?> o8Var, t71 t71Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        pp1 pp1Var = new pp1((Map) null, 3);
        if (t71Var != null) {
            pp1Var.a((Map<String, ? extends Object>) t71Var.a());
        }
        a(context, o8Var, op1.b.g, pp1Var);
    }

    public final void a(Context context, o8<?> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        pp1 pp1VarA = this.c.a(o8Var, this.a);
        pp1VarA.b(op1.c.c.a(), "status");
        a(context, o8Var, op1.b.h, pp1VarA);
    }

    public final void a(Context context, o8<?> o8Var, u71 u71Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        pp1 pp1Var = new pp1((Map) null, 3);
        if (u71Var != null) {
            pp1Var = u71Var.a();
        }
        pp1Var.b(op1.c.c.a(), "status");
        a(context, o8Var, op1.b.h, pp1Var);
    }
}
