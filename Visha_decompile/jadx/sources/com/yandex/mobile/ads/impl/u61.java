package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class u61 {
    private final v7 a;
    private final ca1 b;
    private final fa1 c;
    private final hq1<y61> d;
    private final int e;

    public u61(v7 v7Var, ca1 ca1Var, fa1 fa1Var, hq1<y61> hq1Var, int i) {
        y45.j(v7Var, "adRequestData");
        y45.j(ca1Var, "nativeResponseType");
        y45.j(fa1Var, "sourceType");
        y45.j(hq1Var, "requestPolicy");
        this.a = v7Var;
        this.b = ca1Var;
        this.c = fa1Var;
        this.d = hq1Var;
        this.e = i;
    }

    public final v7 a() {
        return this.a;
    }

    public final int b() {
        return this.e;
    }

    public final ca1 c() {
        return this.b;
    }

    public final hq1<y61> d() {
        return this.d;
    }

    public final fa1 e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u61)) {
            return false;
        }
        u61 u61Var = (u61) obj;
        return y45.e(this.a, u61Var.a) && this.b == u61Var.b && this.c == u61Var.c && y45.e(this.d, u61Var.d) && this.e == u61Var.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "NativeAdRequestData(adRequestData=" + this.a + ", nativeResponseType=" + this.b + ", sourceType=" + this.c + ", requestPolicy=" + this.d + ", adsCount=" + this.e + ")";
    }
}
