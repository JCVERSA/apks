package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class li1 {
    private final r9 a;
    private final z5 b;
    private final eb c;

    public li1(r9 r9Var, z5 z5Var, eb ebVar) {
        y45.j(r9Var, "adStateHolder");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(ebVar, "adsLoaderPlaybackErrorConverter");
        this.a = r9Var;
        this.b = z5Var;
        this.c = ebVar;
    }

    public final void a(Exception exc) {
        xc2 xc2Var;
        cj1 cj1VarC = this.a.c();
        go0 go0VarD = cj1VarC != null ? cj1VarC.d() : null;
        wm0 wm0VarA = go0VarD != null ? this.a.a(go0VarD) : null;
        if (wm0VarA == null || wm0.b == wm0VarA) {
            return;
        }
        if (exc != null) {
            this.c.getClass();
            xc2Var = eb.c(exc);
        } else {
            xc2Var = new xc2(xc2.a.D, new v00());
        }
        this.b.a(go0VarD, xc2Var);
    }
}
