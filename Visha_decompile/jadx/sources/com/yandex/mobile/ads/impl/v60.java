package com.yandex.mobile.ads.impl;

import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import defpackage.y45;

public final class v60 implements Player.Listener {
    private final pl a;
    private final a70 b;
    private final fi1 c;
    private final qi1 d;
    private final ki1 e;
    private final j52 f;
    private final th1 g;

    public v60(pl plVar, a70 a70Var, fi1 fi1Var, qi1 qi1Var, ki1 ki1Var, j52 j52Var, th1 th1Var) {
        y45.j(plVar, "bindingControllerHolder");
        y45.j(a70Var, "exoPlayerProvider");
        y45.j(fi1Var, "playbackStateChangedListener");
        y45.j(qi1Var, "playerStateChangedListener");
        y45.j(ki1Var, "playerErrorListener");
        y45.j(j52Var, "timelineChangedListener");
        y45.j(th1Var, "playbackChangesHandler");
        this.a = plVar;
        this.b = a70Var;
        this.c = fi1Var;
        this.d = qi1Var;
        this.e = ki1Var;
        this.f = j52Var;
        this.g = th1Var;
    }

    @Override
    public final void onPlayWhenReadyChanged(boolean z, int i) {
        Player playerA = this.b.a();
        if (!this.a.b() || playerA == null) {
            return;
        }
        this.d.a(z, playerA.getPlaybackState());
    }

    @Override
    public final void onPlaybackStateChanged(int i) {
        Player playerA = this.b.a();
        if (!this.a.b() || playerA == null) {
            return;
        }
        this.c.a(i, playerA);
    }

    @Override
    public final void onPlayerError(PlaybackException playbackException) {
        y45.j(playbackException, "error");
        this.e.a(playbackException);
    }

    @Override
    public final void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        y45.j(positionInfo, "oldPosition");
        y45.j(positionInfo2, "newPosition");
        this.g.a();
    }

    @Override
    public final void onRenderedFirstFrame() {
        Player playerA = this.b.a();
        if (playerA != null) {
            onPlaybackStateChanged(playerA.getPlaybackState());
        }
    }

    @Override
    public final void onTimelineChanged(Timeline timeline, int i) {
        y45.j(timeline, "timeline");
        this.f.a(timeline);
    }
}
