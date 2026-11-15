package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class wa2 implements jg2 {
    private final String a;
    private final oq0 b;
    private final String c;
    private final Map<String, List<String>> d;

    public wa2(String str, oq0 oq0Var, String str2, HashMap map) {
        y45.j(str, "vendor");
        y45.j(map, "events");
        this.a = str;
        this.b = oq0Var;
        this.c = str2;
        this.d = map;
    }

    @Override
    public final Map<String, List<String>> a() {
        Map<String, List<String>> mapUnmodifiableMap = Collections.unmodifiableMap(this.d);
        y45.i(mapUnmodifiableMap, "unmodifiableMap(...)");
        return mapUnmodifiableMap;
    }

    public final oq0 b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wa2)) {
            return false;
        }
        wa2 wa2Var = (wa2) obj;
        return y45.e(this.a, wa2Var.a) && y45.e(this.b, wa2Var.b) && y45.e(this.c, wa2Var.c) && y45.e(this.d, wa2Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        oq0 oq0Var = this.b;
        int iHashCode2 = (iHashCode + (oq0Var == null ? 0 : oq0Var.hashCode())) * 31;
        String str = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Verification(vendor=" + this.a + ", javaScriptResource=" + this.b + ", parameters=" + this.c + ", events=" + this.d + ")";
    }
}
