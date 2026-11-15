package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdapterInfo;
import defpackage.abb;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class nz0 {
    private final gy0 a;
    private final dy0 b;

    public nz0(gy0 gy0Var) {
        this(gy0Var, new dy0());
    }

    public final void a(Context context, lz0 lz0Var, tx0 tx0Var, String str, Long l) {
        MediatedAdapterInfo mediatedAdapterInfoB;
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(str, "failureReason");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("failure_reason", str);
        linkedHashMap.put("status", "error");
        if (l != null) {
            linkedHashMap.put("response_time", l);
        }
        if (tx0Var != null) {
            this.b.getClass();
            linkedHashMap.putAll(dy0.a(tx0Var));
        }
        this.a.h(context, lz0Var, linkedHashMap, (tx0Var == null || (mediatedAdapterInfoB = tx0Var.b()) == null) ? null : mediatedAdapterInfoB.getNetworkName());
    }

    public nz0(gy0 gy0Var, dy0 dy0Var) {
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(dy0Var, "mediatedAdapterInfoReportDataProvider");
        this.a = gy0Var;
        this.b = dy0Var;
    }

    public final void a(Context context, lz0 lz0Var, tx0 tx0Var) {
        MediatedAdapterInfo mediatedAdapterInfoB;
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        Map<String, ? extends Object> mapQ = kotlin.collections.a.q(abb.a("status", "success"));
        if (tx0Var != null) {
            this.b.getClass();
            mapQ.putAll(dy0.a(tx0Var));
        }
        this.a.h(context, lz0Var, mapQ, (tx0Var == null || (mediatedAdapterInfoB = tx0Var.b()) == null) ? null : mediatedAdapterInfoB.getNetworkName());
    }
}
