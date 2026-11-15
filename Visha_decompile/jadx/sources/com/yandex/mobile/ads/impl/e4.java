package com.yandex.mobile.ads.impl;

import defpackage.blb;
import defpackage.y45;

public final class e4 {
    private final p5 a;
    private final c3 b;

    public e4(pe2 pe2Var, p5 p5Var, c3 c3Var) {
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(c3Var, "adBreakTimingProvider");
        this.a = p5Var;
        this.b = c3Var;
    }

    public final int a(ht htVar) {
        y45.j(htVar, "adBreakPosition");
        long jA = this.b.a(htVar);
        com.google.android.exoplayer2.source.ads.a aVarA = this.a.a();
        if (jA == Long.MIN_VALUE) {
            int i = aVarA.c;
            if (i <= 0 || aVarA.d(i - 1).b != Long.MIN_VALUE) {
                return -1;
            }
            return aVarA.c - 1;
        }
        long jT0 = blb.t0(jA);
        int i2 = aVarA.c;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = aVarA.d(i3).b;
            if (j != Long.MIN_VALUE && Math.abs(j - jT0) <= 1000) {
                return i3;
            }
        }
        return -1;
    }
}
