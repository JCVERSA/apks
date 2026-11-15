package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class fj1 implements zl1 {
    private final rf2 a;
    private final yn1 b;
    private final xn1 c;
    private final hj1 d;
    private boolean e;

    public fj1(rf2 rf2Var, yn1 yn1Var, xn1 xn1Var, hj1 hj1Var) {
        y45.j(rf2Var, "videoProgressMonitoringManager");
        y45.j(yn1Var, "readyToPrepareProvider");
        y45.j(xn1Var, "readyToPlayProvider");
        y45.j(hj1Var, "playlistSchedulerListener");
        this.a = rf2Var;
        this.b = yn1Var;
        this.c = xn1Var;
        this.d = hj1Var;
    }

    @Override
    public final void a(long j) {
        gt gtVarA = this.c.a(j);
        if (gtVarA != null) {
            this.d.a(gtVarA);
            return;
        }
        gt gtVarA2 = this.b.a(j);
        if (gtVarA2 != null) {
            this.d.b(gtVarA2);
        }
    }

    public final void b() {
        if (this.e) {
            this.a.a((zl1) null);
            this.a.b();
            this.e = false;
        }
    }

    public final void a() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.a.a(this);
        this.a.a();
    }
}
