package com.yandex.mobile.ads.impl;

import defpackage.blb;
import defpackage.y45;

public final class j80 {
    private final uj1 a;
    private final pe2 b;

    public j80(uj1 uj1Var, pe2 pe2Var) {
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(pe2Var, "videoDurationHolder");
        this.a = uj1Var;
        this.b = pe2Var;
    }

    public final void a(com.google.android.exoplayer2.source.ads.a aVar, int i) {
        y45.j(aVar, "adPlaybackState");
        long jP0 = blb.P0(aVar.d(i).b);
        if (jP0 == Long.MIN_VALUE) {
            jP0 = this.b.a();
        }
        this.a.a(new l80(jP0));
    }

    public final void a() {
        this.a.a((l80) null);
    }
}
