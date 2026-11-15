package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.ye9;
import java.util.Set;

public final class f {
    private final String a;
    private final Set<Long> b;

    public f() {
        this(0);
    }

    public final String a() {
        return this.a;
    }

    public final Set<Long> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return y45.e(this.a, fVar.a) && y45.e(this.b, fVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AbExperimentData(experiments=" + this.a + ", triggeredTestIds=" + this.b + ")";
    }

    public f(int i) {
        this("", ye9.f());
    }

    public f(String str, Set<Long> set) {
        y45.j(str, "experiments");
        y45.j(set, "triggeredTestIds");
        this.a = str;
        this.b = set;
    }
}
