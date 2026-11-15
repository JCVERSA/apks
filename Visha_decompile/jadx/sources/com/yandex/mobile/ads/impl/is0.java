package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.util.Util;
import defpackage.y45;

public final class is0 {
    private final tj1 a;
    private final oe2 b;

    public is0(tj1 tj1Var, oe2 oe2Var) {
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(oe2Var, "videoDurationHolder");
        this.a = tj1Var;
        this.b = oe2Var;
    }

    public final int a(AdPlaybackState adPlaybackState) {
        y45.j(adPlaybackState, "adPlaybackState");
        oi1 oi1VarB = this.a.b();
        if (oi1VarB == null) {
            return -1;
        }
        long jMsToUs = Util.msToUs(this.b.a());
        long jMsToUs2 = Util.msToUs(oi1VarB.a());
        int adGroupIndexForPositionUs = adPlaybackState.getAdGroupIndexForPositionUs(jMsToUs2, jMsToUs);
        return adGroupIndexForPositionUs == -1 ? adPlaybackState.getAdGroupIndexAfterPositionUs(jMsToUs2, jMsToUs) : adGroupIndexForPositionUs;
    }
}
