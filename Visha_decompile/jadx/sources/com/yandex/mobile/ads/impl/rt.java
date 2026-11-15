package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class rt {
    private final xt a;
    private final tt b;
    private final tt c;
    private final tt d;
    private final cu e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final Float k;
    private final String l;
    private final String m;
    private final String n;
    private final String o;
    private final boolean p;

    public rt() {
        this(0);
    }

    public final String a() {
        return this.f;
    }

    public final String b() {
        return this.g;
    }

    public final String c() {
        return this.h;
    }

    public final String d() {
        return this.i;
    }

    public final tt e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rt)) {
            return false;
        }
        rt rtVar = (rt) obj;
        return y45.e(this.a, rtVar.a) && y45.e(this.b, rtVar.b) && y45.e(this.c, rtVar.c) && y45.e(this.d, rtVar.d) && y45.e(this.e, rtVar.e) && y45.e(this.f, rtVar.f) && y45.e(this.g, rtVar.g) && y45.e(this.h, rtVar.h) && y45.e(this.i, rtVar.i) && y45.e(this.j, rtVar.j) && y45.e(this.k, rtVar.k) && y45.e(this.l, rtVar.l) && y45.e(this.m, rtVar.m) && y45.e(this.n, rtVar.n) && y45.e(this.o, rtVar.o) && this.p == rtVar.p;
    }

    public final boolean f() {
        return this.p;
    }

    public final tt g() {
        return this.c;
    }

    public final tt h() {
        return this.d;
    }

    public final int hashCode() {
        xt xtVar = this.a;
        int iHashCode = (xtVar == null ? 0 : xtVar.hashCode()) * 31;
        tt ttVar = this.b;
        int iHashCode2 = (iHashCode + (ttVar == null ? 0 : ttVar.hashCode())) * 31;
        tt ttVar2 = this.c;
        int iHashCode3 = (iHashCode2 + (ttVar2 == null ? 0 : ttVar2.hashCode())) * 31;
        tt ttVar3 = this.d;
        int iHashCode4 = (iHashCode3 + (ttVar3 == null ? 0 : ttVar3.hashCode())) * 31;
        cu cuVar = this.e;
        int iHashCode5 = (iHashCode4 + (cuVar == null ? 0 : cuVar.hashCode())) * 31;
        String str = this.f;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode7 = (iHashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.h;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.i;
        int iHashCode9 = (iHashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.j;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Float f = this.k;
        int iHashCode11 = (iHashCode10 + (f == null ? 0 : f.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode12 = (iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode13 = (iHashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.n;
        int iHashCode14 = (iHashCode13 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.o;
        return Boolean.hashCode(this.p) + ((iHashCode14 + (str9 != null ? str9.hashCode() : 0)) * 31);
    }

    public final xt i() {
        return this.a;
    }

    public final String j() {
        return this.j;
    }

    public final Float k() {
        return this.k;
    }

    public final String l() {
        return this.l;
    }

    public final String m() {
        return this.m;
    }

    public final String n() {
        return this.n;
    }

    public final String o() {
        return this.o;
    }

    public final String toString() {
        return "CoreNativeAdAssets(media=" + this.a + ", favicon=" + this.b + ", icon=" + this.c + ", image=" + this.d + ", closeButton=" + this.e + ", age=" + this.f + ", body=" + this.g + ", callToAction=" + this.h + ", domain=" + this.i + ", price=" + this.j + ", rating=" + this.k + ", reviewCount=" + this.l + ", sponsored=" + this.m + ", title=" + this.n + ", warning=" + this.o + ", feedbackAvailable=" + this.p + ")";
    }

    public rt(int i) {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false);
    }

    public rt(xt xtVar, tt ttVar, tt ttVar2, tt ttVar3, cu cuVar, String str, String str2, String str3, String str4, String str5, Float f, String str6, String str7, String str8, String str9, boolean z) {
        this.a = xtVar;
        this.b = ttVar;
        this.c = ttVar2;
        this.d = ttVar3;
        this.e = cuVar;
        this.f = str;
        this.g = str2;
        this.h = str3;
        this.i = str4;
        this.j = str5;
        this.k = f;
        this.l = str6;
        this.m = str7;
        this.n = str8;
        this.o = str9;
        this.p = z;
    }
}
