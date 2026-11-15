package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gi1 {
    private final p5 a;
    private final ri1 b;
    private final js0 c;

    public gi1(p5 p5Var, uj1 uj1Var, pe2 pe2Var, ri1 ri1Var, js0 js0Var) {
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(ri1Var, "playerStateChangedListener");
        y45.j(js0Var, "loadingAdGroupIndexProvider");
        this.a = p5Var;
        this.b = ri1Var;
        this.c = js0Var;
    }

    public final void a(int i, com.google.android.exoplayer2.t tVar) {
        y45.j(tVar, "player");
        if (i == 2 && !tVar.isPlayingAd()) {
            com.google.android.exoplayer2.source.ads.a aVarA = this.a.a();
            int iA = this.c.a(aVarA);
            if (iA == -1) {
                return;
            }
            com.google.android.exoplayer2.source.ads.a.C0082a c0082aD = aVarA.d(iA);
            y45.i(c0082aD, "getAdGroup(...)");
            int i2 = c0082aD.c;
            if (i2 != -1 && i2 != 0 && c0082aD.e[0] != 0) {
                return;
            }
        }
        this.b.a(tVar.getPlayWhenReady(), i);
    }
}
