package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class eg2 {
    private final vi1 a;
    private final me2 b;

    public eg2(vi1 vi1Var, me2 me2Var) {
        y45.j(vi1Var, "playerStateHolder");
        y45.j(me2Var, "videoCompletedNotifier");
        this.a = vi1Var;
        this.b = me2Var;
    }

    public final void a(com.google.android.exoplayer2.t tVar) {
        y45.j(tVar, "player");
        if (this.a.c() || tVar.isPlayingAd()) {
            return;
        }
        this.b.c();
        boolean zB = this.b.b();
        com.google.android.exoplayer2.a0 a0VarB = this.a.b();
        if (zB || a0VarB.u()) {
            return;
        }
        a0VarB.j(0, this.a.a());
    }
}
