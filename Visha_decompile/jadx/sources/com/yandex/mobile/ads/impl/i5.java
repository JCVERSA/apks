package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class i5 {
    private final o3 a;
    private final sp1 b;
    private final ch1 c;
    private final id d;
    private kq1 e;
    private jr1 f;
    private boolean g;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i5(Context context, o3 o3Var, g5 g5Var) {
        this(context, o3Var, g5Var, nd.a(context, jn2.a, o3Var.q().b()), new h5(g5Var), new id(context));
        o3Var.q().f();
    }

    public final void a(Object... objArr) {
        y45.j(objArr, "listeners");
        boolean z = false;
        for (Object obj : objArr) {
            if (obj != null) {
                z = true;
                break;
            }
        }
        this.g = z;
    }

    public final void a(String str) {
        y45.j(str, "failureReason");
        HashMap map = new HashMap();
        map.put("status", "error");
        map.put("failure_reason", str);
        map.put("durations", this.c.a());
        map.put("load_listener_available", Boolean.valueOf(this.g));
        a(map);
    }

    public i5(Context context, o3 o3Var, g5 g5Var, sp1 sp1Var, ch1 ch1Var, id idVar) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(sp1Var, "metricaReporter");
        y45.j(ch1Var, "phasesParametersProvider");
        y45.j(idVar, "metricaLibraryEventReporter");
        this.a = o3Var;
        this.b = sp1Var;
        this.c = ch1Var;
        this.d = idVar;
    }

    private final void a(HashMap map) {
        pp1 pp1Var = new pp1(map, 2);
        kq1 kq1Var = this.e;
        if (kq1Var != null) {
            pp1Var.a((Map<String, ? extends Object>) kq1Var.a());
        }
        jr1 jr1Var = this.f;
        if (jr1Var != null) {
            pp1Var = qp1.a(pp1Var, jr1Var.a());
        }
        op1.b bVar = op1.b.c;
        Map<String, Object> mapB = pp1Var.b();
        op1 op1Var = new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(pp1Var, bVar, "reportType", mapB, "reportData"));
        this.b.a(op1Var);
        if (y45.e(map.get("status"), "success")) {
            id idVar = this.d;
            Map<String, ? extends Object> mapB2 = op1Var.b();
            String strJ = this.a.j();
            if (strJ == null) {
                strJ = op1.a.a;
            }
            idVar.a(bVar, mapB2, strJ, null);
        }
    }

    public final void a() {
        HashMap map = new HashMap();
        map.put("status", "success");
        map.put("durations", this.c.a());
        map.put("load_listener_available", Boolean.valueOf(this.g));
        a(map);
    }

    public final void a(kq1 kq1Var) {
        y45.j(kq1Var, "reportParameterManager");
        this.e = kq1Var;
    }

    public final void a(jr1 jr1Var) {
        y45.j(jr1Var, "reportParameterManager");
        this.f = jr1Var;
    }
}
