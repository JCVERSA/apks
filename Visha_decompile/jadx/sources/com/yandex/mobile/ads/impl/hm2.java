package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.player.ad.InstreamAdPlayer;
import defpackage.y45;

public final class hm2 implements kt {
    private final InstreamAdPlayer a;
    private final lm2 b;

    public hm2(InstreamAdPlayer instreamAdPlayer, lm2 lm2Var) {
        y45.j(instreamAdPlayer, "instreamAdPlayer");
        y45.j(lm2Var, "videoAdAdapterCache");
        this.a = instreamAdPlayer;
        this.b = lm2Var;
    }

    @Override
    public final long a(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.b.a(go0Var).getDuration();
    }

    @Override
    public final long b(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.a.getAdPosition(this.b.a(go0Var));
    }

    @Override
    public final void c(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.playAd(this.b.a(go0Var));
    }

    @Override
    public final void d(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.prepareAd(this.b.a(go0Var));
    }

    @Override
    public final void e(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.releaseAd(this.b.a(go0Var));
        this.b.b(go0Var);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof hm2) && y45.e(((hm2) obj).a, this.a);
    }

    @Override
    public final void f(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.pauseAd(this.b.a(go0Var));
    }

    @Override
    public final void g(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.resumeAd(this.b.a(go0Var));
    }

    @Override
    public final void h(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.skipAd(this.b.a(go0Var));
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void i(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a.stopAd(this.b.a(go0Var));
    }

    @Override
    public final boolean j(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.a.isPlayingAd(this.b.a(go0Var));
    }

    @Override
    public final float k(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        return this.a.getVolume(this.b.a(go0Var));
    }

    @Override
    public final void a(km0 km0Var) {
        this.a.setInstreamAdPlayerListener(km0Var != null ? new jm2(km0Var, this.b, new im2()) : null);
    }

    @Override
    public final void a(go0 go0Var, float f) {
        y45.j(go0Var, "videoAd");
        this.a.setVolume(this.b.a(go0Var), f);
    }
}
