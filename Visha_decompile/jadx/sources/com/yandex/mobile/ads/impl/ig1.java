package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.y45;
import java.util.List;

public final class ig1 {
    static final af5[] c = {ta.a(ig1.class, "loadController", "getLoadController()Lcom/monetization/ads/base/BaseAdLoadController;", 0)};
    private final jg1 a;
    private final go1 b;

    public ig1(ck ckVar, hz0 hz0Var, g5 g5Var) {
        this(ckVar, hz0Var, g5Var, new wa());
    }

    public final void a() {
        ck ckVar = (ck) this.b.getValue(this, c[0]);
        if (ckVar == null || ckVar.h()) {
            return;
        }
        ckVar.a(this.a);
    }

    public ig1(ck<?> ckVar, hz0 hz0Var, g5 g5Var, wa waVar) {
        y45.j(ckVar, "loadController");
        y45.j(hz0Var, "mediationData");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(waVar, "adapterLoadingDurationProvider");
        this.b = ho1.a(ckVar);
        List<e5> listB = g5Var.b();
        waVar.getClass();
        this.a = new jg1(new kg1(wa.a(listB), hz0Var));
    }
}
