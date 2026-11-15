package com.yandex.mobile.ads.impl;

import com.monetization.ads.quality.base.model.configuration.AdQualityVerifiableNetwork;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class d7 {
    private final int a;
    private final boolean b;
    private final boolean c;
    private final Map<AdQualityVerifiableNetwork, m7> d;
    private final Set<String> e;

    public d7(int i, boolean z, boolean z2, LinkedHashMap linkedHashMap, Set set) {
        y45.j(linkedHashMap, "adNetworksCustomParameters");
        y45.j(set, "enabledAdUnits");
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = linkedHashMap;
        this.e = set;
    }

    public final Map<AdQualityVerifiableNetwork, m7> a() {
        return this.d;
    }

    public final boolean b() {
        return this.c;
    }

    public final boolean c() {
        return this.b;
    }

    public final Set<String> d() {
        return this.e;
    }

    public final int e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d7)) {
            return false;
        }
        d7 d7Var = (d7) obj;
        return this.a == d7Var.a && this.b == d7Var.b && this.c == d7Var.c && y45.e(this.d, d7Var.d) && y45.e(this.e, d7Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + a7.a(this.c, a7.a(this.b, Integer.hashCode(this.a) * 31, 31), 31)) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationPolicy(usagePercent=" + this.a + ", enabled=" + this.b + ", blockAdOnInternalError=" + this.c + ", adNetworksCustomParameters=" + this.d + ", enabledAdUnits=" + this.e + ")";
    }
}
