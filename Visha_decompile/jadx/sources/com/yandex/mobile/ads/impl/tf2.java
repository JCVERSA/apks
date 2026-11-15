package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.y45;

public final class tf2 implements bm1 {
    private final r9 a;
    private final uj1 b;
    private final pe2 c;
    private final vi1 d;

    public tf2(r9 r9Var, ti1 ti1Var, uj1 uj1Var, pe2 pe2Var, vi1 vi1Var) {
        y45.j(r9Var, "adStateHolder");
        y45.j(ti1Var, "playerStateController");
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(vi1Var, "playerStateHolder");
        this.a = r9Var;
        this.b = uj1Var;
        this.c = pe2Var;
        this.d = vi1Var;
    }

    @Override
    public final ci1 a() {
        long jA;
        sj1 sj1VarA = this.b.a();
        pi1 pi1VarB = this.b.b();
        if (sj1VarA != null) {
            jA = sj1VarA.a();
        } else {
            jA = (pi1VarB == null || this.a.b() || this.d.c()) ? -1L : pi1VarB.a();
        }
        return new ci1(jA, this.c.a() != C.TIME_UNSET ? this.c.a() : -1L);
    }
}
