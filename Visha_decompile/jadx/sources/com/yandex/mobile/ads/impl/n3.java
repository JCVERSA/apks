package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class n3 {
    private final ql a;
    private final z5 b;
    private final r9 c;
    private final p5 d;
    private final b70 e;
    private final zi1 f;
    private final vi1 g;
    private final t5 h;

    public n3(ql qlVar, p9 p9Var, ti1 ti1Var, z5 z5Var, r9 r9Var, p5 p5Var, b70 b70Var, zi1 zi1Var, vi1 vi1Var, t5 t5Var) {
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(r9Var, "adStateHolder");
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(b70Var, "exoPlayerProvider");
        y45.j(zi1Var, "playerVolumeController");
        y45.j(vi1Var, "playerStateHolder");
        y45.j(t5Var, "adPlaybackStateSkipValidator");
        this.a = qlVar;
        this.b = z5Var;
        this.c = r9Var;
        this.d = p5Var;
        this.e = b70Var;
        this.f = zi1Var;
        this.g = vi1Var;
        this.h = t5Var;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    public final void a(v4 v4Var, go0 go0Var) {
        boolean z;
        y45.j(go0Var, "videoAd");
        y45.j(v4Var, "adInfo");
        if (!this.a.b()) {
            sp0.f(new Object[0]);
            return;
        }
        if (wm0.b == this.c.a(go0Var)) {
            com.google.android.exoplayer2.source.ads.a aVarA = this.d.a();
            if (aVarA.g(v4Var.a(), v4Var.b())) {
                sp0.b(new Object[0]);
                return;
            }
            this.c.a(go0Var, wm0.f);
            com.google.android.exoplayer2.source.ads.a aVarP = aVarA.p(v4Var.a(), v4Var.b());
            y45.i(aVarP, "withSkippedAd(...)");
            this.d.a(aVarP);
            return;
        }
        if (!this.e.b()) {
            sp0.b(new Object[0]);
            return;
        }
        int iA = v4Var.a();
        int iB = v4Var.b();
        com.google.android.exoplayer2.source.ads.a aVarA2 = this.d.a();
        boolean zG = aVarA2.g(iA, iB);
        this.h.getClass();
        y45.j(aVarA2, "adPlaybackState");
        if (iA < aVarA2.c) {
            com.google.android.exoplayer2.source.ads.a.C0082a c0082aD = aVarA2.d(iA);
            y45.i(c0082aD, "getAdGroup(...)");
            int i = c0082aD.c;
            if (i == -1 || iB >= i || c0082aD.e[iB] != 2) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (zG || z) {
            sp0.b(new Object[0]);
        } else {
            this.c.a(go0Var, wm0.h);
            com.google.android.exoplayer2.source.ads.a aVarL = aVarA2.o(iA, iB).l(0L);
            y45.i(aVarL, "withAdResumePositionUs(...)");
            this.d.a(aVarL);
            if (!this.g.c()) {
                this.c.a((cj1) null);
            }
        }
        this.f.b();
        this.b.g(go0Var);
    }
}
