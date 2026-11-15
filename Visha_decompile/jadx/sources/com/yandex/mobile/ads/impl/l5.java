package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.C;
import androidx.media3.common.Player;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class l5 {
    private final i80 a;
    private final le2 b;
    private final q9 c;
    private final o5 d;

    public l5(o9 o9Var, i80 i80Var, le2 le2Var, q9 q9Var, o5 o5Var) {
        y45.j(o9Var, "adStateDataController");
        y45.j(i80Var, "fakePositionConfigurator");
        y45.j(le2Var, "videoCompletedNotifier");
        y45.j(q9Var, "adStateHolder");
        y45.j(o5Var, "adPlaybackStateController");
        this.a = i80Var;
        this.b = le2Var;
        this.c = q9Var;
        this.d = o5Var;
    }

    public final void a(Player player, boolean z) {
        y45.j(player, "player");
        boolean zB = this.b.b();
        int currentAdGroupIndex = player.getCurrentAdGroupIndex();
        if (currentAdGroupIndex == -1) {
            AdPlaybackState adPlaybackStateA = this.d.a();
            long contentPosition = player.getContentPosition();
            long contentDuration = player.getContentDuration();
            if (contentDuration == C.TIME_UNSET || contentPosition == C.TIME_UNSET) {
                currentAdGroupIndex = -1;
            } else {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                currentAdGroupIndex = adPlaybackStateA.getAdGroupIndexForPositionUs(timeUnit.toMicros(contentPosition), timeUnit.toMicros(contentDuration));
            }
        }
        boolean zB2 = this.c.b();
        if (zB || z || currentAdGroupIndex == -1 || zB2) {
            return;
        }
        AdPlaybackState adPlaybackStateA2 = this.d.a();
        if (adPlaybackStateA2.getAdGroup(currentAdGroupIndex).timeUs == Long.MIN_VALUE) {
            this.b.a();
        } else {
            this.a.a(adPlaybackStateA2, currentAdGroupIndex);
        }
    }
}
