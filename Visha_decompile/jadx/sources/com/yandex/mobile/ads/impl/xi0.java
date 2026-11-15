package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xi0 {
    private final df a;
    private final String b;
    private final cj0 c;

    public xi0(df dfVar, String str, cj0 cj0Var) {
        y45.j(dfVar, "appMetricaIdentifiers");
        y45.j(str, "mauid");
        y45.j(cj0Var, "identifiersType");
        this.a = dfVar;
        this.b = str;
        this.c = cj0Var;
    }

    public final df a() {
        return this.a;
    }

    public final cj0 b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xi0)) {
            return false;
        }
        xi0 xi0Var = (xi0) obj;
        return y45.e(this.a, xi0Var.a) && y45.e(this.b, xi0Var.b) && this.c == xi0Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "Identifiers(appMetricaIdentifiers=" + this.a + ", mauid=" + this.b + ", identifiersType=" + this.c + ")";
    }
}
