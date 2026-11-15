package com.yandex.mobile.ads.impl;

import defpackage.blb;
import defpackage.y45;

public final class gb {
    private final ql a;
    private final p5 b;
    private final pe2 c;
    private final uj1 d;
    private boolean e;

    public gb(ql qlVar, p5 p5Var, pe2 pe2Var, uj1 uj1Var) {
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(uj1Var, "positionProviderHolder");
        this.a = qlVar;
        this.b = p5Var;
        this.c = pe2Var;
        this.d = uj1Var;
    }

    public final boolean a() {
        return this.e;
    }

    public final void b() {
        ml mlVarA = this.a.a();
        if (mlVarA != null) {
            pi1 pi1VarB = this.d.b();
            if (pi1VarB == null) {
                sp0.b(new Object[0]);
                return;
            }
            this.e = true;
            int iF = this.b.a().f(blb.t0(pi1VarB.a()), blb.t0(this.c.a()));
            if (iF == -1) {
                mlVarA.a();
            } else if (iF == this.b.a().c) {
                this.a.c();
            } else {
                mlVarA.a();
            }
        }
    }
}
