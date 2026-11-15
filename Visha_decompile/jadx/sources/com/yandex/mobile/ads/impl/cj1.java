package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cj1 {
    private final v4 a;
    private final go0 b;

    public cj1(v4 v4Var, go0 go0Var) {
        y45.j(v4Var, "playingAdInfo");
        y45.j(go0Var, "playingVideoAd");
        this.a = v4Var;
        this.b = go0Var;
    }

    public final v4 a() {
        return this.a;
    }

    public final go0 b() {
        return this.b;
    }

    public final v4 c() {
        return this.a;
    }

    public final go0 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cj1)) {
            return false;
        }
        cj1 cj1Var = (cj1) obj;
        return y45.e(this.a, cj1Var.a) && y45.e(this.b, cj1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "PlayingAdData(playingAdInfo=" + this.a + ", playingVideoAd=" + this.b + ")";
    }
}
