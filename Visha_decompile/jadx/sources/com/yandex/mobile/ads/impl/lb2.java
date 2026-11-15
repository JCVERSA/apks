package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class lb2 {
    private final List<zb2<kb1>> a;
    private final ag2 b;
    private final xj0 c;

    public lb2(List<zb2<kb1>> list, ag2 ag2Var, xj0 xj0Var) {
        y45.j(list, "videoAdsInfo");
        this.a = list;
        this.b = ag2Var;
        this.c = xj0Var;
    }

    public static lb2 a(lb2 lb2Var, List list) {
        ag2 ag2Var = lb2Var.b;
        xj0 xj0Var = lb2Var.c;
        y45.j(list, "videoAdsInfo");
        return new lb2(list, ag2Var, xj0Var);
    }

    public final zb2<kb1> b() {
        return (zb2) defpackage.i81.o0(this.a);
    }

    public final List<zb2<kb1>> c() {
        return this.a;
    }

    public final ag2 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lb2)) {
            return false;
        }
        lb2 lb2Var = (lb2) obj;
        return y45.e(this.a, lb2Var.a) && y45.e(this.b, lb2Var.b) && y45.e(this.c, lb2Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        ag2 ag2Var = this.b;
        int iHashCode2 = (iHashCode + (ag2Var == null ? 0 : ag2Var.hashCode())) * 31;
        xj0 xj0Var = this.c;
        return iHashCode2 + (xj0Var != null ? xj0Var.hashCode() : 0);
    }

    public final String toString() {
        return "Video(videoAdsInfo=" + this.a + ", videoSettings=" + this.b + ", preview=" + this.c + ")";
    }

    public final xj0 a() {
        return this.c;
    }
}
