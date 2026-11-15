package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;
import java.util.Set;

public final class b7 {
    private final boolean a;
    private final boolean b;
    private final String c;
    private final long d;
    private final int e;
    private final boolean f;
    private final Set<String> g;
    private final Map<String, c7> h;

    public b7(boolean z, boolean z2, String str, long j, int i, boolean z3, Set<String> set, Map<String, c7> map) {
        y45.j(str, "apiKey");
        y45.j(set, "enabledAdUnits");
        y45.j(map, "adNetworksCustomParameters");
        this.a = z;
        this.b = z2;
        this.c = str;
        this.d = j;
        this.e = i;
        this.f = z3;
        this.g = set;
        this.h = map;
    }

    public final Map<String, c7> a() {
        return this.h;
    }

    public final String b() {
        return this.c;
    }

    public final boolean c() {
        return this.f;
    }

    public final boolean d() {
        return this.b;
    }

    public final boolean e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b7)) {
            return false;
        }
        b7 b7Var = (b7) obj;
        return this.a == b7Var.a && this.b == b7Var.b && y45.e(this.c, b7Var.c) && this.d == b7Var.d && this.e == b7Var.e && this.f == b7Var.f && y45.e(this.g, b7Var.g) && y45.e(this.h, b7Var.h);
    }

    public final Set<String> f() {
        return this.g;
    }

    public final int g() {
        return this.e;
    }

    public final long h() {
        return this.d;
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + a7.a(this.f, dy1.a(this.e, (Long.hashCode(this.d) + v3.a(this.c, a7.a(this.b, Boolean.hashCode(this.a) * 31, 31), 31)) * 31, 31), 31)) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationConfiguration(enabled=" + this.a + ", debug=" + this.b + ", apiKey=" + this.c + ", validationTimeoutInSec=" + this.d + ", usagePercent=" + this.e + ", blockAdOnInternalError=" + this.f + ", enabledAdUnits=" + this.g + ", adNetworksCustomParameters=" + this.h + ")";
    }
}
