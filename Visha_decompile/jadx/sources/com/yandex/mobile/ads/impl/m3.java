package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import defpackage.y45;

public final class m3 {
    private final pl a;
    private final y5 b;
    private final q9 c;
    private final o5 d;
    private final a70 e;
    private final yi1 f;
    private final ui1 g;
    private final s5 h;

    public m3(pl plVar, o9 o9Var, si1 si1Var, y5 y5Var, q9 q9Var, o5 o5Var, a70 a70Var, yi1 yi1Var, ui1 ui1Var, s5 s5Var) {
        y45.j(plVar, "bindingControllerHolder");
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(q9Var, "adStateHolder");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(a70Var, "exoPlayerProvider");
        y45.j(yi1Var, "playerVolumeController");
        y45.j(ui1Var, "playerStateHolder");
        y45.j(s5Var, "adPlaybackStateSkipValidator");
        this.a = plVar;
        this.b = y5Var;
        this.c = q9Var;
        this.d = o5Var;
        this.e = a70Var;
        this.f = yi1Var;
        this.g = ui1Var;
        this.h = s5Var;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    public final void a(u4 u4Var, go0 go0Var) {
        boolean z;
        y45.j(go0Var, "videoAd");
        y45.j(u4Var, "adInfo");
        if (!this.a.b()) {
            sp0.f(new Object[0]);
            return;
        }
        if (vm0.b == this.c.a(go0Var)) {
            AdPlaybackState adPlaybackStateA = this.d.a();
            if (adPlaybackStateA.isAdInErrorState(u4Var.a(), u4Var.b())) {
                sp0.b(new Object[0]);
                return;
            }
            this.c.a(go0Var, vm0.f);
            AdPlaybackState adPlaybackStateWithSkippedAd = adPlaybackStateA.withSkippedAd(u4Var.a(), u4Var.b());
            y45.i(adPlaybackStateWithSkippedAd, "withSkippedAd(...)");
            this.d.a(adPlaybackStateWithSkippedAd);
            return;
        }
        if (!this.e.b()) {
            sp0.b(new Object[0]);
            return;
        }
        int iA = u4Var.a();
        int iB = u4Var.b();
        AdPlaybackState adPlaybackStateA2 = this.d.a();
        boolean zIsAdInErrorState = adPlaybackStateA2.isAdInErrorState(iA, iB);
        this.h.getClass();
        y45.j(adPlaybackStateA2, "adPlaybackState");
        if (iA < adPlaybackStateA2.adGroupCount) {
            AdPlaybackState.AdGroup adGroup = adPlaybackStateA2.getAdGroup(iA);
            y45.i(adGroup, "getAdGroup(...)");
            int i = adGroup.count;
            if (i == -1 || iB >= i || adGroup.states[iB] != 2) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (zIsAdInErrorState || z) {
            sp0.b(new Object[0]);
        } else {
            this.c.a(go0Var, vm0.h);
            AdPlaybackState adPlaybackStateWithAdResumePositionUs = adPlaybackStateA2.withPlayedAd(iA, iB).withAdResumePositionUs(0L);
            y45.i(adPlaybackStateWithAdResumePositionUs, "withAdResumePositionUs(...)");
            this.d.a(adPlaybackStateWithAdResumePositionUs);
            if (!this.g.c()) {
                this.c.a((bj1) null);
            }
        }
        this.f.b();
        this.b.g(go0Var);
    }
}
