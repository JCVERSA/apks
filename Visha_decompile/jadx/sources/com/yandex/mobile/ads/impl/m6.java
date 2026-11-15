package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class m6 {
    private final long a;
    private final n6 b;
    private final o6 c;

    public m6(long j, n6 n6Var, o6 o6Var) {
        this.a = j;
        this.b = n6Var;
        this.c = o6Var;
    }

    public final long a() {
        return this.a;
    }

    public final n6 b() {
        return this.b;
    }

    public final o6 c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m6)) {
            return false;
        }
        m6 m6Var = (m6) obj;
        return this.a == m6Var.a && y45.e(this.b, m6Var.b) && this.c == m6Var.c;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        n6 n6Var = this.b;
        int iHashCode2 = (iHashCode + (n6Var == null ? 0 : n6Var.hashCode())) * 31;
        o6 o6Var = this.c;
        return iHashCode2 + (o6Var != null ? o6Var.hashCode() : 0);
    }

    public final String toString() {
        return "AdPodItem(duration=" + this.a + ", skip=" + this.b + ", transitionPolicy=" + this.c + ")";
    }
}
