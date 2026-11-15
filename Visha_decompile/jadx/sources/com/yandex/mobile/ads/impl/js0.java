package com.yandex.mobile.ads.impl;

import defpackage.blb;
import defpackage.y45;

public final class js0 {
    private final uj1 a;
    private final pe2 b;

    public js0(uj1 uj1Var, pe2 pe2Var) {
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(pe2Var, "videoDurationHolder");
        this.a = uj1Var;
        this.b = pe2Var;
    }

    public final int a(com.google.android.exoplayer2.source.ads.a aVar) {
        y45.j(aVar, "adPlaybackState");
        pi1 pi1VarB = this.a.b();
        if (pi1VarB == null) {
            return -1;
        }
        long jT0 = blb.t0(this.b.a());
        long jT1 = blb.t0(pi1VarB.a());
        int iF = aVar.f(jT1, jT0);
        return iF == -1 ? aVar.e(jT1, jT0) : iF;
    }
}
