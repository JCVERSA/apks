package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.player.content.VideoPlayerListener;
import defpackage.y45;

public final class un2 implements VideoPlayerListener {
    private final nu a;

    public un2(lf2 lf2Var) {
        y45.j(lf2Var, "videoPlayerListener");
        this.a = lf2Var;
    }

    @Override
    public final void onVideoCompleted() {
        this.a.onVideoCompleted();
    }

    @Override
    public final void onVideoError() {
        this.a.onVideoError();
    }

    @Override
    public final void onVideoPaused() {
        this.a.onVideoPaused();
    }

    @Override
    public final void onVideoPrepared() {
        this.a.onVideoPrepared();
    }

    @Override
    public final void onVideoResumed() {
        this.a.onVideoResumed();
    }
}
