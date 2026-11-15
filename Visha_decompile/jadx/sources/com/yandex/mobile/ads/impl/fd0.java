package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class fd0 {
    private final o8<?> a;
    private final String b;
    private final gv1 c;

    public fd0(o8<?> o8Var, String str, gv1 gv1Var) {
        y45.j(o8Var, "adResponse");
        y45.j(str, "htmlResponse");
        y45.j(gv1Var, "sdkFullscreenHtmlAd");
        this.a = o8Var;
        this.b = str;
        this.c = gv1Var;
    }

    public final o8<?> a() {
        return this.a;
    }

    public final gv1 b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fd0)) {
            return false;
        }
        fd0 fd0Var = (fd0) obj;
        return y45.e(this.a, fd0Var.a) && y45.e(this.b, fd0Var.b) && y45.e(this.c, fd0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "FullScreenDataHolder(adResponse=" + this.a + ", htmlResponse=" + this.b + ", sdkFullscreenHtmlAd=" + this.c + ")";
    }
}
