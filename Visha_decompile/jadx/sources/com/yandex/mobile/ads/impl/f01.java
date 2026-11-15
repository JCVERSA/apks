package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class f01 {
    private final String a;
    private final List<g01> b;
    private final long c;

    public f01(long j, String str, List list) {
        y45.j(str, "adUnitId");
        y45.j(list, "networks");
        this.a = str;
        this.b = list;
        this.c = j;
    }

    public final long a() {
        return this.c;
    }

    public final List<g01> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f01)) {
            return false;
        }
        f01 f01Var = (f01) obj;
        return y45.e(this.a, f01Var.a) && y45.e(this.b, f01Var.b) && this.c == f01Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + aa.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "MediationPrefetchAdUnitSettings(adUnitId=" + this.a + ", networks=" + this.b + ", loadTimeoutMillis=" + this.c + ")";
    }
}
