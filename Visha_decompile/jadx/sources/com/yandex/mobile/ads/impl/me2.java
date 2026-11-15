package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class me2 {
    private final p5 a;
    private final jf2 b;
    private final ke2 c;
    private boolean d;

    public me2(p5 p5Var, pe2 pe2Var, uj1 uj1Var, jf2 jf2Var, ke2 ke2Var) {
        y45.j(p5Var, "adPlaybackStateController");
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(jf2Var, "videoPlayerEventsController");
        y45.j(ke2Var, "videoCompleteNotifyPolicy");
        this.a = p5Var;
        this.b = jf2Var;
        this.c = ke2Var;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        com.google.android.exoplayer2.source.ads.a aVarA = this.a.a();
        int i = aVarA.c;
        for (int i2 = 0; i2 < i; i2++) {
            com.google.android.exoplayer2.source.ads.a.C0082a c0082aD = aVarA.d(i2);
            y45.i(c0082aD, "getAdGroup(...)");
            if (c0082aD.b != Long.MIN_VALUE) {
                if (c0082aD.c < 0) {
                    aVarA = aVarA.j(i2, 1);
                    y45.i(aVarA, "withAdCount(...)");
                }
                aVarA = aVarA.q(i2);
                y45.i(aVarA, "withSkippedAdGroup(...)");
                this.a.a(aVarA);
            }
        }
        this.b.onVideoCompleted();
    }

    public final boolean b() {
        return this.d;
    }

    public final void c() {
        if (this.c.a()) {
            a();
        }
    }
}
