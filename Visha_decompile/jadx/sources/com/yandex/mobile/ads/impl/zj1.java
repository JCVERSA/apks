package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class zj1 {
    private final String a;
    private final String b;
    private final Map<String, Object> c;
    private final Integer d;
    private final xy e;

    public zj1(String str, String str2, LinkedHashMap linkedHashMap, Integer num, xy xyVar) {
        y45.j(str, "packageName");
        y45.j(str2, "url");
        this.a = str;
        this.b = str2;
        this.c = linkedHashMap;
        this.d = num;
        this.e = xyVar;
    }

    public final Map<String, Object> a() {
        return this.c;
    }

    public final Integer b() {
        return this.d;
    }

    public final xy c() {
        return this.e;
    }

    public final String d() {
        return this.a;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zj1)) {
            return false;
        }
        zj1 zj1Var = (zj1) obj;
        return y45.e(this.a, zj1Var.a) && y45.e(this.b, zj1Var.b) && y45.e(this.c, zj1Var.c) && y45.e(this.d, zj1Var.d) && this.e == zj1Var.e;
    }

    public final int hashCode() {
        int iA = v3.a(this.b, this.a.hashCode() * 31, 31);
        Map<String, Object> map = this.c;
        int iHashCode = (iA + (map == null ? 0 : map.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        xy xyVar = this.e;
        return iHashCode2 + (xyVar != null ? xyVar.hashCode() : 0);
    }

    public final String toString() {
        return "PreferredPackage(packageName=" + this.a + ", url=" + this.b + ", extras=" + this.c + ", flags=" + this.d + ", launchMode=" + this.e + ")";
    }
}
