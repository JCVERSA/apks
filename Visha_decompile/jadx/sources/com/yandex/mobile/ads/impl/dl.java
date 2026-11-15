package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class dl {
    private final ts a;
    private final gz1 b;
    private final Map<String, String> c;

    public dl(ts tsVar, gz1 gz1Var, Map<String, String> map) {
        y45.j(map, "parameters");
        this.a = tsVar;
        this.b = gz1Var;
        this.c = map;
    }

    public final ts a() {
        return this.a;
    }

    public final Map<String, String> b() {
        return this.c;
    }

    public final gz1 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dl)) {
            return false;
        }
        dl dlVar = (dl) obj;
        return this.a == dlVar.a && y45.e(this.b, dlVar.b) && y45.e(this.c, dlVar.c);
    }

    public final int hashCode() {
        ts tsVar = this.a;
        int iHashCode = (tsVar == null ? 0 : tsVar.hashCode()) * 31;
        gz1 gz1Var = this.b;
        return this.c.hashCode() + ((iHashCode + (gz1Var != null ? gz1Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "BidderTokenRequestData(adType=" + this.a + ", sizeInfo=" + this.b + ", parameters=" + this.c + ")";
    }
}
