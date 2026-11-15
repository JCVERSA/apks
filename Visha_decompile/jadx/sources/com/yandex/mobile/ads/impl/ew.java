package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class ew implements dw {
    private final sp1 a;
    private final pp1 b;

    public ew(s01 s01Var, pp1 pp1Var) {
        y45.j(s01Var, "metricaReporter");
        y45.j(pp1Var, "reportDataWrapper");
        this.a = s01Var;
        this.b = pp1Var;
    }

    @Override
    public final void a(cw cwVar) {
        y45.j(cwVar, "eventType");
        this.b.b(cwVar.a(), "log_type");
        op1.b bVar = op1.b.V;
        Map<String, Object> mapB = this.b.b();
        this.a.a(new op1(bVar.a(), (Map<String, Object>) kotlin.collections.a.C(mapB), df1.a(this.b, bVar, "reportType", mapB, "reportData")));
    }
}
