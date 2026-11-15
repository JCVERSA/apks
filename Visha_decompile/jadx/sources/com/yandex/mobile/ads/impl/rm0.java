package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class rm0 {
    private final qz1 a;
    private final ul1 b;
    private final xo0 c;

    public rm0(go0 go0Var, vo0 vo0Var, co0 co0Var, cn0 cn0Var, qd2 qd2Var) {
        this(go0Var, vo0Var, co0Var, cn0Var, qd2Var, new qz1(cn0Var, go0Var), new ul1(cn0Var), new xo0(co0Var, vo0Var, qd2Var));
    }

    public final void a(dd2 dd2Var) {
        y45.j(dd2Var, "progressEventsObservable");
        dd2Var.a(this.a, this.b, this.c);
    }

    public rm0(go0 go0Var, vo0 vo0Var, co0 co0Var, cn0 cn0Var, qd2 qd2Var, qz1 qz1Var, ul1 ul1Var, xo0 xo0Var) {
        y45.j(go0Var, "instreamVideoAd");
        y45.j(vo0Var, "videoViewProvider");
        y45.j(co0Var, "videoAdPlayer");
        y45.j(cn0Var, "adViewsHolderManager");
        y45.j(qd2Var, "adStatusController");
        y45.j(qz1Var, "skipDisplayTracker");
        y45.j(ul1Var, "progressDisplayTracker");
        y45.j(xo0Var, "visibilityTracker");
        this.a = qz1Var;
        this.b = ul1Var;
        this.c = xo0Var;
    }
}
