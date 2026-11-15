package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ki1 {
    private final q9 a;
    private final y5 b;
    private final db c;

    public ki1(q9 q9Var, y5 y5Var, db dbVar) {
        y45.j(q9Var, "adStateHolder");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(dbVar, "adsLoaderPlaybackErrorConverter");
        this.a = q9Var;
        this.b = y5Var;
        this.c = dbVar;
    }

    public final void a(Exception exc) {
        xc2 xc2Var;
        bj1 bj1VarC = this.a.c();
        go0 go0VarD = bj1VarC != null ? bj1VarC.d() : null;
        vm0 vm0VarA = go0VarD != null ? this.a.a(go0VarD) : null;
        if (vm0VarA == null || vm0.b == vm0VarA) {
            return;
        }
        if (exc != null) {
            this.c.getClass();
            xc2Var = db.c(exc);
        } else {
            xc2Var = new xc2(xc2.a.D, new v00());
        }
        this.b.a(go0VarD, xc2Var);
    }
}
