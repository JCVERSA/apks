package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.util.Util;
import defpackage.y45;

public final class d4 {
    private final o5 a;
    private final b3 b;

    public d4(oe2 oe2Var, o5 o5Var, b3 b3Var) {
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(b3Var, "adBreakTimingProvider");
        this.a = o5Var;
        this.b = b3Var;
    }

    public final int a(ht htVar) {
        y45.j(htVar, "adBreakPosition");
        long jA = this.b.a(htVar);
        AdPlaybackState adPlaybackStateA = this.a.a();
        if (jA == Long.MIN_VALUE) {
            int i = adPlaybackStateA.adGroupCount;
            if (i <= 0 || adPlaybackStateA.getAdGroup(i - 1).timeUs != Long.MIN_VALUE) {
                return -1;
            }
            return adPlaybackStateA.adGroupCount - 1;
        }
        long jMsToUs = Util.msToUs(jA);
        int i2 = adPlaybackStateA.adGroupCount;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = adPlaybackStateA.getAdGroup(i3).timeUs;
            if (j != Long.MIN_VALUE && Math.abs(j - jMsToUs) <= 1000) {
                return i3;
            }
        }
        return -1;
    }
}
