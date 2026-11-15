package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ax1 implements mu {
    private final bm1 a;
    private final zi1 b;
    private final jf2 c;

    public ax1(sl1 sl1Var, zi1 zi1Var, jf2 jf2Var) {
        y45.j(sl1Var, "progressProvider");
        y45.j(zi1Var, "playerVolumeController");
        y45.j(jf2Var, "eventsController");
        this.a = sl1Var;
        this.b = zi1Var;
        this.c = jf2Var;
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
