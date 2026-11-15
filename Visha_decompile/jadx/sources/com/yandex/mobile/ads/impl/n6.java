package com.yandex.mobile.ads.impl;

public final class n6 {
    private final uz1 a;
    private final wz1 b;
    private final long c;

    public n6(uz1 uz1Var, wz1 wz1Var, long j) {
        this.a = uz1Var;
        this.b = wz1Var;
        this.c = j;
    }

    public final long a() {
        return this.c;
    }

    public final uz1 b() {
        return this.a;
    }

    public final wz1 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n6)) {
            return false;
        }
        n6 n6Var = (n6) obj;
        return this.a == n6Var.a && this.b == n6Var.b && this.c == n6Var.c;
    }

    public final int hashCode() {
        uz1 uz1Var = this.a;
        int iHashCode = (uz1Var == null ? 0 : uz1Var.hashCode()) * 31;
        wz1 wz1Var = this.b;
        return Long.hashCode(this.c) + ((iHashCode + (wz1Var != null ? wz1Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "AdPodSkip(transitionStrategy=" + this.a + ", visibility=" + this.b + ", delay=" + this.c + ")";
    }
}
