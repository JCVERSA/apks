package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class wd0 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final List<String> e;
    private final Map<String, String> f;
    private final nq1 g;

    public wd0(String str, String str2, String str3, String str4, List<String> list, Map<String, String> map, nq1 nq1Var) {
        y45.j(str, "adUnitId");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = list;
        this.f = map;
        this.g = nq1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wd0)) {
            return false;
        }
        wd0 wd0Var = (wd0) obj;
        return y45.e(this.a, wd0Var.a) && y45.e(this.b, wd0Var.b) && y45.e(this.c, wd0Var.c) && y45.e(this.d, wd0Var.d) && y45.e(this.e, wd0Var.e) && y45.e(this.f, wd0Var.f) && this.g == wd0Var.g;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<String> list = this.e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        Map<String, String> map = this.f;
        int iHashCode6 = (iHashCode5 + (map == null ? 0 : map.hashCode())) * 31;
        nq1 nq1Var = this.g;
        return iHashCode6 + (nq1Var != null ? nq1Var.hashCode() : 0);
    }

    public final String toString() {
        return "FullscreenCacheParams(adUnitId=" + this.a + ", age=" + this.b + ", gender=" + this.c + ", contextQuery=" + this.d + ", contextTags=" + this.e + ", parameters=" + this.f + ", preferredTheme=" + this.g + ")";
    }
}
