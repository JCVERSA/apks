package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class qz1 implements cd2 {
    private final pz1 a;
    private final od2 b;
    private boolean c;

    public qz1(cn0 cn0Var, go0 go0Var) {
        this(cn0Var, go0Var, new pz1(cn0Var), go0Var.h());
    }

    @Override
    public final void a(long j, long j2) {
        od2 od2Var;
        if (this.c || (od2Var = this.b) == null) {
            return;
        }
        if (j2 < od2Var.a()) {
            this.a.a(this.b.a(), j2);
        } else {
            this.a.a();
            this.c = true;
        }
    }

    public qz1(cn0 cn0Var, go0 go0Var, pz1 pz1Var, od2 od2Var) {
        y45.j(cn0Var, "viewHolderManager");
        y45.j(go0Var, "instreamVideoAd");
        y45.j(pz1Var, "skipCountDownConfigurator");
        this.a = pz1Var;
        this.b = od2Var;
    }
}
