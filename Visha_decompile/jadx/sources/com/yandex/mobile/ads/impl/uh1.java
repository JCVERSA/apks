package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class uh1 {
    private final ql a;
    private final n3 b;
    private final m5 c;
    private final p5 d;
    private final a5 e;
    private final vi1 f;
    private final b70 g;
    private final eg2 h;
    private int i;
    private int j;

    public uh1(ql qlVar, ti1 ti1Var, p9 p9Var, me2 me2Var, j80 j80Var, n3 n3Var, m5 m5Var, p5 p5Var, a5 a5Var, vi1 vi1Var, b70 b70Var, eg2 eg2Var) {
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(ti1Var, "playerStateController");
        y45.j(p9Var, "adStateDataController");
        y45.j(me2Var, "videoCompletedNotifier");
        y45.j(j80Var, "fakePositionConfigurator");
        y45.j(n3Var, "adCompletionListener");
        y45.j(m5Var, "adPlaybackConsistencyManager");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(a5Var, "adInfoStorage");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(b70Var, "playerProvider");
        y45.j(eg2Var, "videoStateUpdateController");
        this.a = qlVar;
        this.b = n3Var;
        this.c = m5Var;
        this.d = p5Var;
        this.e = a5Var;
        this.f = vi1Var;
        this.g = b70Var;
        this.h = eg2Var;
        this.i = -1;
        this.j = -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006a  */
    public final void a() {
        boolean z;
        com.google.android.exoplayer2.t tVarA = this.g.a();
        if (!this.a.b() || tVarA == null) {
            return;
        }
        this.h.a(tVarA);
        boolean zC = this.f.c();
        boolean zIsPlayingAd = tVarA.isPlayingAd();
        int currentAdGroupIndex = tVarA.getCurrentAdGroupIndex();
        int currentAdIndexInAdGroup = tVarA.getCurrentAdIndexInAdGroup();
        this.f.a(zIsPlayingAd);
        int i = zIsPlayingAd ? currentAdGroupIndex : this.i;
        int i2 = this.j;
        this.j = currentAdIndexInAdGroup;
        this.i = currentAdGroupIndex;
        v4 v4Var = new v4(i, i2);
        go0 go0VarA = this.e.a(v4Var);
        if (zC) {
            com.google.android.exoplayer2.source.ads.a aVarA = this.d.a();
            if ((aVarA.c <= i || i == -1 || aVarA.d(i).b != Long.MIN_VALUE || tVarA.isPlaying()) && (currentAdIndexInAdGroup == -1 || i2 < currentAdIndexInAdGroup)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (go0VarA != null && z) {
            this.b.a(v4Var, go0VarA);
        }
        this.c.a(tVarA, zC);
    }
}
