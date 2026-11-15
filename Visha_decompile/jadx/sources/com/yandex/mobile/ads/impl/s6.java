package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import defpackage.y45;

public final class s6 implements am1 {
    private final q9 a;
    private final ui1 b;
    private final a70 c;

    public s6(q9 q9Var, si1 si1Var, ui1 ui1Var, a70 a70Var) {
        y45.j(q9Var, "adStateHolder");
        y45.j(si1Var, "playerStateController");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(a70Var, "playerProvider");
        this.a = q9Var;
        this.b = ui1Var;
        this.c = a70Var;
    }

    @Override
    public final di1 a() {
        go0 go0VarD;
        Player playerA;
        bj1 bj1VarC = this.a.c();
        if (bj1VarC == null || (go0VarD = bj1VarC.d()) == null) {
            return di1.c;
        }
        boolean zC = this.b.c();
        vm0 vm0VarA = this.a.a(go0VarD);
        di1 di1Var = di1.c;
        return (vm0.b == vm0VarA || !zC || (playerA = this.c.a()) == null) ? di1Var : new di1(playerA.getCurrentPosition(), playerA.getDuration());
    }
}
