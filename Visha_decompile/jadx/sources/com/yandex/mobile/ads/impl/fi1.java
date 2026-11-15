package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Player;
import defpackage.y45;

public final class fi1 {
    private final o5 a;
    private final qi1 b;
    private final is0 c;

    public fi1(o5 o5Var, tj1 tj1Var, oe2 oe2Var, qi1 qi1Var, is0 is0Var) {
        y45.j(o5Var, "adPlaybackStateController");
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(qi1Var, "playerStateChangedListener");
        y45.j(is0Var, "loadingAdGroupIndexProvider");
        this.a = o5Var;
        this.b = qi1Var;
        this.c = is0Var;
    }

    public final void a(int i, Player player) {
        y45.j(player, "player");
        if (i == 2 && !player.isPlayingAd()) {
            AdPlaybackState adPlaybackStateA = this.a.a();
            int iA = this.c.a(adPlaybackStateA);
            if (iA == -1) {
                return;
            }
            AdPlaybackState.AdGroup adGroup = adPlaybackStateA.getAdGroup(iA);
            y45.i(adGroup, "getAdGroup(...)");
            int i2 = adGroup.count;
            if (i2 != -1 && i2 != 0 && adGroup.states[0] != 0) {
                return;
            }
        }
        this.b.a(player.getPlayWhenReady(), i);
    }
}
