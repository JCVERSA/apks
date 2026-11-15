package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class e5 {
    private final f5 a;
    private final Map<String, Object> b;

    public e5(f5 f5Var, Map<String, ? extends Object> map) {
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(map, "reportParameters");
        this.a = f5Var;
        this.b = map;
    }

    public final f5 a() {
        return this.a;
    }

    public final Map<String, Object> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e5)) {
            return false;
        }
        e5 e5Var = (e5) obj;
        return this.a == e5Var.a && y45.e(this.b, e5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AdLoadingPhase(adLoadingPhaseType=" + this.a + ", reportParameters=" + this.b + ")";
    }
}
