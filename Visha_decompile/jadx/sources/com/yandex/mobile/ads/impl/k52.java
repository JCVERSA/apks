package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import defpackage.blb;
import defpackage.y45;

public final class k52 {
    private final p5 a;
    private final gb b;
    private final uh1 c;
    private final vi1 d;
    private final pe2 e;
    private final n82 f;

    public k52(p5 p5Var, ti1 ti1Var, gb gbVar, uh1 uh1Var, vi1 vi1Var, pe2 pe2Var, n82 n82Var) {
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(ti1Var, "playerStateController");
        y45.j(gbVar, "adsPlaybackInitializer");
        y45.j(uh1Var, "playbackChangesHandler");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(n82Var, "updatedDurationAdPlaybackProvider");
        this.a = p5Var;
        this.b = gbVar;
        this.c = uh1Var;
        this.d = vi1Var;
        this.e = pe2Var;
        this.f = n82Var;
    }

    public final void a(com.google.android.exoplayer2.a0 a0Var) {
        y45.j(a0Var, "timeline");
        if (a0Var.u()) {
            return;
        }
        if (a0Var.m() != 1) {
            sp0.b(new Object[0]);
        }
        this.d.a(a0Var);
        com.google.android.exoplayer2.a0.b bVarJ = a0Var.j(0, this.d.a());
        y45.i(bVarJ, "getPeriod(...)");
        long j = bVarJ.e;
        this.e.a(blb.P0(j));
        if (j != C.TIME_UNSET) {
            com.google.android.exoplayer2.source.ads.a aVarA = this.a.a();
            this.f.getClass();
            y45.j(aVarA, "adPlaybackState");
            com.google.android.exoplayer2.source.ads.a aVarN = aVarA.n(j);
            y45.i(aVarN, "withContentDurationUs(...)");
            int i = aVarN.c;
            for (int i2 = 0; i2 < i; i2++) {
                if (aVarN.d(i2).b > j) {
                    aVarN = aVarN.q(i2);
                    y45.i(aVarN, "withSkippedAdGroup(...)");
                }
            }
            this.a.a(aVarN);
        }
        if (!this.b.a()) {
            this.b.b();
        }
        this.c.a();
    }
}
