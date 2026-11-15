package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class bj1 {
    private final u4 a;
    private final go0 b;

    public bj1(u4 u4Var, go0 go0Var) {
        y45.j(u4Var, "playingAdInfo");
        y45.j(go0Var, "playingVideoAd");
        this.a = u4Var;
        this.b = go0Var;
    }

    public final u4 a() {
        return this.a;
    }

    public final go0 b() {
        return this.b;
    }

    public final u4 c() {
        return this.a;
    }

    public final go0 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bj1)) {
            return false;
        }
        bj1 bj1Var = (bj1) obj;
        return y45.e(this.a, bj1Var.a) && y45.e(this.b, bj1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PlayingAdData(playingAdInfo=" + this.a + ", playingVideoAd=" + this.b + ")";
    }
}
