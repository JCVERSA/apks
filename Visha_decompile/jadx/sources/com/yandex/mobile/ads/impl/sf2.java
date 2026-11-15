package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;

public final class sf2 implements am1 {
    private final q9 a;
    private final tj1 b;
    private final oe2 c;
    private final ui1 d;

    public sf2(q9 q9Var, si1 si1Var, tj1 tj1Var, oe2 oe2Var, ui1 ui1Var) {
        y45.j(q9Var, "adStateHolder");
        y45.j(si1Var, "playerStateController");
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(ui1Var, "playerStateHolder");
        this.a = q9Var;
        this.b = tj1Var;
        this.c = oe2Var;
        this.d = ui1Var;
    }

    @Override
    public final di1 a() {
        long jA;
        rj1 rj1VarA = this.b.a();
        oi1 oi1VarB = this.b.b();
        if (rj1VarA != null) {
            jA = rj1VarA.a();
        } else {
            jA = (oi1VarB == null || this.a.b() || this.d.c()) ? -1L : oi1VarB.a();
        }
        return new di1(jA, this.c.a() != C.TIME_UNSET ? this.c.a() : -1L);
    }
}
