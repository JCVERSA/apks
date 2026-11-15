package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import defpackage.y45;

public final class oi1 implements rj1 {
    private final Player a;
    private final ui1 b;

    public oi1(Player player, ui1 ui1Var) {
        y45.j(player, "player");
        y45.j(ui1Var, "playerStateHolder");
        this.a = player;
        this.b = ui1Var;
    }

    @Override
    public final long a() {
        Timeline timelineB = this.b.b();
        return this.a.getContentPosition() - (!timelineB.isEmpty() ? timelineB.getPeriod(0, this.b.a()).getPositionInWindowMs() : 0L);
    }
}
