package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Player;
import defpackage.y45;

public final class th1 {
    private final pl a;
    private final m3 b;
    private final l5 c;
    private final o5 d;
    private final z4 e;
    private final ui1 f;
    private final a70 g;
    private final dg2 h;
    private int i;
    private int j;

    public th1(pl plVar, si1 si1Var, o9 o9Var, le2 le2Var, i80 i80Var, m3 m3Var, l5 l5Var, o5 o5Var, z4 z4Var, ui1 ui1Var, a70 a70Var, dg2 dg2Var) {
        y45.j(plVar, "bindingControllerHolder");
        y45.j(si1Var, "playerStateController");
        y45.j(o9Var, "adStateDataController");
        y45.j(le2Var, "videoCompletedNotifier");
        y45.j(i80Var, "fakePositionConfigurator");
        y45.j(m3Var, "adCompletionListener");
        y45.j(l5Var, "adPlaybackConsistencyManager");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(z4Var, "adInfoStorage");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(a70Var, "playerProvider");
        y45.j(dg2Var, "videoStateUpdateController");
        this.a = plVar;
        this.b = m3Var;
        this.c = l5Var;
        this.d = o5Var;
        this.e = z4Var;
        this.f = ui1Var;
        this.g = a70Var;
        this.h = dg2Var;
        this.i = -1;
        this.j = -1;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006a  */
    public final void a() {
        boolean z;
        Player playerA = this.g.a();
        if (!this.a.b() || playerA == null) {
            return;
        }
        this.h.a(playerA);
        boolean zC = this.f.c();
        boolean zIsPlayingAd = playerA.isPlayingAd();
        int currentAdGroupIndex = playerA.getCurrentAdGroupIndex();
        int currentAdIndexInAdGroup = playerA.getCurrentAdIndexInAdGroup();
        this.f.a(zIsPlayingAd);
        int i = zIsPlayingAd ? currentAdGroupIndex : this.i;
        int i2 = this.j;
        this.j = currentAdIndexInAdGroup;
        this.i = currentAdGroupIndex;
        u4 u4Var = new u4(i, i2);
        go0 go0VarA = this.e.a(u4Var);
        if (zC) {
            AdPlaybackState adPlaybackStateA = this.d.a();
            if ((adPlaybackStateA.adGroupCount <= i || i == -1 || adPlaybackStateA.getAdGroup(i).timeUs != Long.MIN_VALUE || playerA.isPlaying()) && (currentAdIndexInAdGroup == -1 || i2 < currentAdIndexInAdGroup)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        if (go0VarA != null && z) {
            this.b.a(u4Var, go0VarA);
        }
        this.c.a(playerA, zC);
    }
}
