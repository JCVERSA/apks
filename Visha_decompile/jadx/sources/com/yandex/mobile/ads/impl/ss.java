package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ss {
    private final String a;
    private final h9 b;
    private final String c;

    public ss(String str, h9 h9Var, String str2) {
        y45.j(str, "adUnitId");
        this.a = str;
        this.b = h9Var;
        this.c = str2;
    }

    public final h9 a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ss)) {
            return false;
        }
        ss ssVar = (ss) obj;
        return y45.e(this.a, ssVar.a) && y45.e(this.b, ssVar.b) && y45.e(this.c, ssVar.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        h9 h9Var = this.b;
        int iHashCode2 = (iHashCode + (h9Var == null ? 0 : h9Var.hashCode())) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "CoreAdInfo(adUnitId=" + this.a + ", adSize=" + this.b + ", data=" + this.c + ")";
    }
}
