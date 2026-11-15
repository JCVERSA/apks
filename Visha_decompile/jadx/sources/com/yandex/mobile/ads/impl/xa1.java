package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xa1 {
    private final ai1 a;
    private final qf2 b;
    private final gi2 c;

    public xa1(rg2 rg2Var, sa1 sa1Var, cc1 cc1Var, jb1 jb1Var) {
        y45.j(rg2Var, "viewAdapter");
        y45.j(sa1Var, "nativeVideoAdPlayer");
        y45.j(cc1Var, "videoViewProvider");
        y45.j(jb1Var, "listener");
        ua1 ua1Var = new ua1(sa1Var);
        this.a = new ai1(jb1Var);
        this.b = new qf2(rg2Var);
        this.c = new gi2(ua1Var, cc1Var);
    }

    public final void a(dd2 dd2Var) {
        y45.j(dd2Var, "progressEventsObservable");
        dd2Var.a(this.a, this.b, this.c);
    }
}
