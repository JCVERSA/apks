package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class b41 {
    private final co0 a;
    private final f6 b;

    public b41(co0 co0Var) {
        this(co0Var, new f6(co0Var));
    }

    public final void a(ob2 ob2Var, ln0 ln0Var) {
        y45.j(ob2Var, "uiElements");
        y45.j(ln0Var, "controlsState");
        float fA = ln0Var.a();
        boolean zD = ln0Var.d();
        z31 z31VarI = ob2Var.i();
        a41 a41Var = new a41(this.a, this.b, ln0Var, z31VarI);
        if (z31VarI != null) {
            z31VarI.setOnClickListener(a41Var);
        }
        if (z31VarI != null) {
            z31VarI.setMuted(zD);
        }
        this.b.a(fA, zD);
    }

    public b41(co0 co0Var, f6 f6Var) {
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(f6Var, "adPlayerVolumeConfigurator");
        this.a = co0Var;
        this.b = f6Var;
    }
}
