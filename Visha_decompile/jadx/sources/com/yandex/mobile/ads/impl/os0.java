package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class os0 implements ns0 {
    private final qe a;
    private final xv1 b;
    private final b01 c;
    private final ur d;
    private final bw e;
    private final ft0 f;

    public os0(qe qeVar, xv1 xv1Var, b01 b01Var, ur urVar, bw bwVar, ft0 ft0Var) {
        y45.j(qeVar, "appDataSource");
        y45.j(xv1Var, "sdkIntegrationDataSource");
        y45.j(b01Var, "mediationNetworksDataSource");
        y45.j(urVar, "consentsDataSource");
        y45.j(bwVar, "debugErrorIndicatorDataSource");
        y45.j(ft0Var, "logsDataSource");
        this.a = qeVar;
        this.b = xv1Var;
        this.c = b01Var;
        this.d = urVar;
        this.e = bwVar;
        this.f = ft0Var;
    }

    @Override
    public final nx a() {
        return new nx(this.a.a(), this.b.a(), this.c.a(), this.d.a(), this.e.a(), this.f.a());
    }

    @Override
    public final void a(boolean z) {
        this.e.a(z);
    }
}
