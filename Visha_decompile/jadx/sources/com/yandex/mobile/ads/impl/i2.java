package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class i2 {
    private final boolean a;
    private final g2 b;
    private final long c;
    private final int d;

    public i2(boolean z, g2 g2Var, long j, int i) {
        y45.j(g2Var, "requestPolicy");
        this.a = z;
        this.b = g2Var;
        this.c = j;
        this.d = i;
    }

    public final int a() {
        return this.d;
    }

    public final long b() {
        return this.c;
    }

    public final g2 c() {
        return this.b;
    }

    public final boolean d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        return this.a == i2Var.a && this.b == i2Var.b && this.c == i2Var.c && this.d == i2Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Long.hashCode(this.c) + ((this.b.hashCode() + (Boolean.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdBlockerState(wasDetected=" + this.a + ", requestPolicy=" + this.b + ", lastUpdateTime=" + this.c + ", failedRequestsCount=" + this.d + ")";
    }
}
