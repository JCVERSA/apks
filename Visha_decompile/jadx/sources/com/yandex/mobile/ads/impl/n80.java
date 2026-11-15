package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class n80 {
    private final ts a;
    private final long b;
    private final o0.a c;
    private final m80 d;
    private final Map<String, Object> e;
    private final f f;

    public n80(ts tsVar, long j, o0.a aVar, m80 m80Var, Map<String, ? extends Object> map, f fVar) {
        y45.j(tsVar, "adType");
        y45.j(aVar, "activityInteractionType");
        y45.j(map, "reportData");
        this.a = tsVar;
        this.b = j;
        this.c = aVar;
        this.d = m80Var;
        this.e = map;
        this.f = fVar;
    }

    public final f a() {
        return this.f;
    }

    public final o0.a b() {
        return this.c;
    }

    public final ts c() {
        return this.a;
    }

    public final m80 d() {
        return this.d;
    }

    public final Map<String, Object> e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n80)) {
            return false;
        }
        n80 n80Var = (n80) obj;
        return this.a == n80Var.a && this.b == n80Var.b && this.c == n80Var.c && y45.e(this.d, n80Var.d) && y45.e(this.e, n80Var.e) && y45.e(this.f, n80Var.f);
    }

    public final long f() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + ((Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31)) * 31;
        m80 m80Var = this.d;
        int iHashCode2 = (this.e.hashCode() + ((iHashCode + (m80Var == null ? 0 : m80Var.hashCode())) * 31)) * 31;
        f fVar = this.f;
        return iHashCode2 + (fVar != null ? fVar.hashCode() : 0);
    }

    public final String toString() {
        return "FalseClickData(adType=" + this.a + ", startTime=" + this.b + ", activityInteractionType=" + this.c + ", falseClick=" + this.d + ", reportData=" + this.e + ", abExperiments=" + this.f + ")";
    }
}
