package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import defpackage.y45;

public final class le2 {
    private final o5 a;
    private final kf2 b;
    private final je2 c;
    private boolean d;

    public le2(o5 o5Var, oe2 oe2Var, tj1 tj1Var, kf2 kf2Var, je2 je2Var) {
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(kf2Var, "videoPlayerEventsController");
        y45.j(je2Var, "videoCompleteNotifyPolicy");
        this.a = o5Var;
        this.b = kf2Var;
        this.c = je2Var;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        this.d = true;
        AdPlaybackState adPlaybackStateA = this.a.a();
        int i = adPlaybackStateA.adGroupCount;
        for (int i2 = 0; i2 < i; i2++) {
            AdPlaybackState.AdGroup adGroup = adPlaybackStateA.getAdGroup(i2);
            y45.i(adGroup, "getAdGroup(...)");
            if (adGroup.timeUs != Long.MIN_VALUE) {
                if (adGroup.count < 0) {
                    adPlaybackStateA = adPlaybackStateA.withAdCount(i2, 1);
                    y45.i(adPlaybackStateA, "withAdCount(...)");
                }
                adPlaybackStateA = adPlaybackStateA.withSkippedAdGroup(i2);
                y45.i(adPlaybackStateA, "withSkippedAdGroup(...)");
                this.a.a(adPlaybackStateA);
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
