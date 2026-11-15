package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class zw1 implements mu {
    private final am1 a;
    private final yi1 b;
    private final kf2 c;

    public zw1(rl1 rl1Var, yi1 yi1Var, kf2 kf2Var) {
        y45.j(rl1Var, "progressProvider");
        y45.j(yi1Var, "playerVolumeController");
        y45.j(kf2Var, "eventsController");
        this.a = rl1Var;
        this.b = yi1Var;
        this.c = kf2Var;
    }

    @Override
    public final void a(lf2 lf2Var) {
        this.c.a(lf2Var);
    }

    @Override
    public final long getVideoDuration() {
        return this.a.a().b();
    }

    @Override
    public final long getVideoPosition() {
        return this.a.a().c();
    }

    @Override
    public final float getVolume() {
        Float fA = this.b.a();
        if (fA != null) {
            return fA.floatValue();
        }
        return 0.0f;
    }

    @Override
    public final void pauseVideo() {
        this.c.onVideoPaused();
    }

    @Override
    public final void prepareVideo() {
        this.c.onVideoPrepared();
    }

    @Override
    public final void resumeVideo() {
        this.c.onVideoResumed();
    }
}
