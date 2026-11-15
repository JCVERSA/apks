package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class gs0 {
    private final b02 a;
    private final o8<String> b;

    public gs0(b02 b02Var, o8<String> o8Var) {
        y45.j(b02Var, "sliderAd");
        y45.j(o8Var, "adResponse");
        this.a = b02Var;
        this.b = o8Var;
    }

    public final o8<String> a() {
        return this.b;
    }

    public final b02 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gs0)) {
            return false;
        }
        gs0 gs0Var = (gs0) obj;
        return y45.e(this.a, gs0Var.a) && y45.e(this.b, gs0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "LoadedFeedItem(sliderAd=" + this.a + ", adResponse=" + this.b + ")";
    }
}
