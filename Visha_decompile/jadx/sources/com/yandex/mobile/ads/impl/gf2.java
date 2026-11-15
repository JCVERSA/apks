package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gf2 implements aj1 {
    private final mu a;
    private final gg2 b;
    private final lf2 c;

    public gf2(mu muVar) {
        this(muVar, new gg2(), new lf2());
    }

    public final void a(cf2 cf2Var) {
        y45.j(cf2Var, "listener");
        this.c.a(cf2Var);
    }

    public final long b() {
        return this.a.getVideoDuration();
    }

    public final long c() {
        return this.a.getVideoPosition();
    }

    public final void d() {
        this.a.pauseVideo();
    }

    public final void e() {
        this.a.prepareVideo();
    }

    public final void f() {
        this.a.resumeVideo();
    }

    public final void g() {
        this.a.a(this.c);
    }

    @Override
    public final float getVolume() {
        return this.a.getVolume();
    }

    public final void h() {
        this.a.a(null);
        this.c.b();
    }

    public final gg2 a() {
        return this.b;
    }

    public gf2(mu muVar, gg2 gg2Var, lf2 lf2Var) {
        y45.j(muVar, "videoPlayer");
        y45.j(gg2Var, "statusController");
        y45.j(lf2Var, "videoPlayerEventsController");
        this.a = muVar;
        this.b = gg2Var;
        this.c = lf2Var;
    }
}
