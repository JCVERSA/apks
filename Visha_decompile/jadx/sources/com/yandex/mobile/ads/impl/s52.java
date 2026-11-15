package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s52 {
    private final String a;
    private final hu1 b;

    public s52(String str, hu1 hu1Var) {
        this.a = str;
        this.b = hu1Var;
    }

    public final String a() {
        return this.a;
    }

    public final hu1 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s52)) {
            return false;
        }
        s52 s52Var = (s52) obj;
        return y45.e(this.a, s52Var.a) && this.b == s52Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        hu1 hu1Var = this.b;
        return iHashCode + (hu1Var != null ? hu1Var.hashCode() : 0);
    }

    public final String toString() {
        return "TokenResult(bidderToken=" + this.a + ", stubReason=" + this.b + ")";
    }
}
