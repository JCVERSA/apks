package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class k5 implements r81 {
    private final hc0 a;

    public k5(hc0 hc0Var) {
        y45.j(hc0Var, "forceImpressionTrackingListener");
        this.a = hc0Var;
    }

    @Override
    public final void a(pk0 pk0Var) {
        y45.j(pk0Var, "eventsObservable");
        pk0Var.a(this.a);
    }
}
