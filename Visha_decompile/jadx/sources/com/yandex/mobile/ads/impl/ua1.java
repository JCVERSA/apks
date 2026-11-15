package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ua1 implements wc2<kb1> {
    private final sa1 a;

    public ua1(sa1 sa1Var) {
        y45.j(sa1Var, "videoPlayer");
        this.a = sa1Var;
    }

    @Override
    public final void a(zb2<kb1> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        this.a.a(zb2Var.d());
    }

    @Override
    public final long b() {
        return this.a.b();
    }

    @Override
    public final void c() {
        this.a.c();
    }

    @Override
    public final long getAdPosition() {
        return this.a.getAdPosition();
    }

    @Override
    public final float getVolume() {
        return this.a.getVolume();
    }

    @Override
    public final boolean isPlayingAd() {
        return this.a.isPlayingAd();
    }

    @Override
    public final void pauseAd() {
        this.a.pauseAd();
    }

    @Override
    public final void resumeAd() {
        this.a.resumeAd();
    }

    @Override
    public final void a(oc2 oc2Var) {
        this.a.a(oc2Var);
    }

    @Override
    public final void a() {
        this.a.a();
    }
}
