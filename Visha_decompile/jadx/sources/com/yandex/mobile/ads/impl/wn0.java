package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreak;
import com.yandex.mobile.ads.instream.InstreamAdBreakEventListener;
import com.yandex.mobile.ads.instream.inroll.Inroll;
import com.yandex.mobile.ads.instream.pauseroll.Pauseroll;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdPlayer;
import com.yandex.mobile.ads.instream.player.ad.InstreamAdView;
import com.yandex.mobile.ads.video.playback.VideoAdPlaybackListener;
import defpackage.y45;

public final class wn0 implements Inroll, Pauseroll {
    private final qt0 a;
    private final lm2 b;

    public wn0(qt0 qt0Var) {
        this(qt0Var, new lm2());
    }

    @Override
    public final InstreamAdBreak getInstreamAdBreak() {
        return new bm2(this.a.a());
    }

    @Override
    public final void invalidate() {
        this.a.b();
    }

    @Override
    public final void pause() {
        this.a.c();
    }

    @Override
    public final void play(InstreamAdView instreamAdView) {
        y45.j(instreamAdView, "instreamAdView");
        this.a.a(instreamAdView);
    }

    @Override
    public final void prepare(InstreamAdPlayer instreamAdPlayer) {
        y45.j(instreamAdPlayer, "instreamAdPlayer");
        this.a.a(new hm2(instreamAdPlayer, this.b));
    }

    @Override
    public final void resume() {
        this.a.d();
    }

    @Override
    public final void setListener(InstreamAdBreakEventListener instreamAdBreakEventListener) {
        this.a.a(instreamAdBreakEventListener != null ? new cm2(instreamAdBreakEventListener) : null);
    }

    @Override
    public final void setVideoAdPlaybackListener(VideoAdPlaybackListener videoAdPlaybackListener) {
        this.a.a(videoAdPlaybackListener != null ? new rn2(videoAdPlaybackListener, this.b) : null);
    }

    public wn0(qt0 qt0Var, lm2 lm2Var) {
        y45.j(qt0Var, "manualAdBreakPlaybackController");
        y45.j(lm2Var, "videoAdAdapterCache");
        qt0Var.getClass();
        this.a = qt0Var;
        this.b = lm2Var;
    }
}
