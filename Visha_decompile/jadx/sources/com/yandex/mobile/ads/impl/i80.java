package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.util.Util;
import defpackage.y45;

public final class i80 {
    private final tj1 a;
    private final oe2 b;

    public i80(tj1 tj1Var, oe2 oe2Var) {
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(oe2Var, "videoDurationHolder");
        this.a = tj1Var;
        this.b = oe2Var;
    }

    public final void a(AdPlaybackState adPlaybackState, int i) {
        y45.j(adPlaybackState, "adPlaybackState");
        long jUsToMs = Util.usToMs(adPlaybackState.getAdGroup(i).timeUs);
        if (jUsToMs == Long.MIN_VALUE) {
            jUsToMs = this.b.a();
        }
        this.a.a(new k80(jUsToMs));
    }

    public final void a() {
        this.a.a((k80) null);
    }
}
