package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import defpackage.y45;

public final class dg2 {
    private final ui1 a;
    private final le2 b;

    public dg2(ui1 ui1Var, le2 le2Var) {
        y45.j(ui1Var, "playerStateHolder");
        y45.j(le2Var, "videoCompletedNotifier");
        this.a = ui1Var;
        this.b = le2Var;
    }

    public final void a(Player player) {
        y45.j(player, "player");
        if (this.a.c() || player.isPlayingAd()) {
            return;
        }
        this.b.c();
        boolean zB = this.b.b();
        Timeline timelineB = this.a.b();
        if (zB || timelineB.isEmpty()) {
            return;
        }
        timelineB.getPeriod(0, this.a.a());
    }
}
