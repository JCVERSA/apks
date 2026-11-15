package com.yandex.mobile.ads.impl;

import android.location.Location;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class v7 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final List<String> e;
    private final Location f;
    private final Map<String, String> g;
    private final String h;
    private final String i;
    private final nq1 j;
    private final boolean k;
    private final String l;

    public static final class a {
        private final String a;
        private String b;
        private String c;
        private Location d;
        private String e;
        private List<String> f;
        private Map<String, String> g;
        private String h;
        private String i;
        private nq1 j;
        private boolean k;

        public a(String str) {
            y45.j(str, "adUnitId");
            this.a = str;
        }

        public final v7 a() {
            return new v7(this.a, this.b, this.c, this.e, this.f, this.d, this.g, this.h, this.i, this.j, this.k, null);
        }

        public final a b(String str) {
            this.e = str;
            return this;
        }

        public final a c(String str) {
            this.c = str;
            return this;
        }

        public final a d(String str) {
            this.h = str;
            return this;
        }

        public final a b() {
            this.i = null;
            return this;
        }

        public final a a(String str) {
            this.b = str;
            return this;
        }

        public final a a(List<String> list) {
            this.f = list;
            return this;
        }

        public final a a(Location location) {
            this.d = location;
            return this;
        }

        public final a a(Map<String, String> map) {
            this.g = map;
            return this;
        }

        public final a a(nq1 nq1Var) {
            this.j = nq1Var;
            return this;
        }

        public final a a(boolean z) {
            this.k = z;
            return this;
        }
    }

    public v7(String str, String str2, String str3, String str4, List<String> list, Location location, Map<String, String> map, String str5, String str6, nq1 nq1Var, boolean z, String str7) {
        y45.j(str, "adUnitId");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = list;
        this.f = location;
        this.g = map;
        this.h = str5;
        this.i = str6;
        this.j = nq1Var;
        this.k = z;
        this.l = str7;
    }

    public static v7 a(v7 v7Var, Map map, String str, int i) {
        String str2 = v7Var.a;
        String str3 = v7Var.b;
        String str4 = v7Var.c;
        String str5 = v7Var.d;
        List<String> list = v7Var.e;
        Location location = v7Var.f;
        Map map2 = (i & 64) != 0 ? v7Var.g : map;
        String str6 = v7Var.h;
        String str7 = v7Var.i;
        nq1 nq1Var = v7Var.j;
        boolean z = v7Var.k;
        String str8 = (i & 2048) != 0 ? v7Var.l : str;
        y45.j(str2, "adUnitId");
        return new v7(str2, str3, str4, str5, list, location, map2, str6, str7, nq1Var, z, str8);
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.d;
    }

    public final List<String> d() {
        return this.e;
    }

    public final String e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v7)) {
            return false;
        }
        v7 v7Var = (v7) obj;
        return y45.e(this.a, v7Var.a) && y45.e(this.b, v7Var.b) && y45.e(this.c, v7Var.c) && y45.e(this.d, v7Var.d) && y45.e(this.e, v7Var.e) && y45.e(this.f, v7Var.f) && y45.e(this.g, v7Var.g) && y45.e(this.h, v7Var.h) && y45.e(this.i, v7Var.i) && this.j == v7Var.j && this.k == v7Var.k && y45.e(this.l, v7Var.l);
    }

    public final Location f() {
        return this.f;
    }

    public final String g() {
        return this.h;
    }

    public final Map<String, String> h() {
        return this.g;
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
        Location location = this.f;
        int iHashCode6 = (iHashCode5 + (location == null ? 0 : location.hashCode())) * 31;
        Map<String, String> map = this.g;
        int iHashCode7 = (iHashCode6 + (map == null ? 0 : map.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        nq1 nq1Var = this.j;
        int iA = a7.a(this.k, (iHashCode9 + (nq1Var == null ? 0 : nq1Var.hashCode())) * 31, 31);
        String str6 = this.l;
        return iA + (str6 != null ? str6.hashCode() : 0);
    }

    public final nq1 i() {
        return this.j;
    }

    public final String j() {
        return this.l;
    }

    public final boolean k() {
        return this.k;
    }

    public final String toString() {
        return "AdRequestData(adUnitId=" + this.a + ", age=" + this.b + ", gender=" + this.c + ", contextQuery=" + this.d + ", contextTags=" + this.e + ", location=" + this.f + ", parameters=" + this.g + ", openBiddingData=" + this.h + ", readyResponse=" + this.i + ", preferredTheme=" + this.j + ", shouldLoadImagesAutomatically=" + this.k + ", preloadType=" + this.l + ")";
    }

    public final String a() {
        return this.a;
    }
}
