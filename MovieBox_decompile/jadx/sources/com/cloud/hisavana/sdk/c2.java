package com.cloud.hisavana.sdk;

import kotlin.jvm.internal.Intrinsics;

public final class c2 {

    private final String f21124a;

    private final String f21125b;

    private final int f21126c;

    private final Double f21127d;

    private final int f21128e;

    private final int f21129f;

    private final String f21130g;

    private final String f21131h;

    private final String f21132i;

    private final int f21133j;

    private final String f21134k;

    private final String f21135l;

    private final String f21136m;

    private final String f21137n;

    private final String f21138o;

    private final String f21139p;

    public c2(String ad_creative_id, String codeSeatId, int i10, Double d10, int i11, int i12, String str, String str2, String str3, int i13, String str4, String str5, String str6, String str7, String str8, String str9) {
        Intrinsics.h(ad_creative_id, "ad_creative_id");
        Intrinsics.h(codeSeatId, "codeSeatId");
        this.f21124a = ad_creative_id;
        this.f21125b = codeSeatId;
        this.f21126c = i10;
        this.f21127d = d10;
        this.f21128e = i11;
        this.f21129f = i12;
        this.f21130g = str;
        this.f21131h = str2;
        this.f21132i = str3;
        this.f21133j = i13;
        this.f21134k = str4;
        this.f21135l = str5;
        this.f21136m = str6;
        this.f21137n = str7;
        this.f21138o = str8;
        this.f21139p = str9;
    }

    public final String a() {
        return this.f21139p;
    }

    public final String b() {
        return this.f21124a;
    }

    public final int c() {
        return this.f21128e;
    }

    public final int d() {
        return this.f21126c;
    }

    public final String e() {
        return this.f21125b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c2)) {
            return false;
        }
        c2 c2Var = (c2) obj;
        return Intrinsics.c(this.f21124a, c2Var.f21124a) && Intrinsics.c(this.f21125b, c2Var.f21125b) && this.f21126c == c2Var.f21126c && Intrinsics.c(this.f21127d, c2Var.f21127d) && this.f21128e == c2Var.f21128e && this.f21129f == c2Var.f21129f && Intrinsics.c(this.f21130g, c2Var.f21130g) && Intrinsics.c(this.f21131h, c2Var.f21131h) && Intrinsics.c(this.f21132i, c2Var.f21132i) && this.f21133j == c2Var.f21133j && Intrinsics.c(this.f21134k, c2Var.f21134k) && Intrinsics.c(this.f21135l, c2Var.f21135l) && Intrinsics.c(this.f21136m, c2Var.f21136m) && Intrinsics.c(this.f21137n, c2Var.f21137n) && Intrinsics.c(this.f21138o, c2Var.f21138o) && Intrinsics.c(this.f21139p, c2Var.f21139p);
    }

    public final String f() {
        return this.f21138o;
    }

    public final String g() {
        return this.f21137n;
    }

    public final String h() {
        return this.f21136m;
    }

    public int hashCode() {
        int iHashCode = ((((this.f21124a.hashCode() * 31) + this.f21125b.hashCode()) * 31) + this.f21126c) * 31;
        Double d10 = this.f21127d;
        int iHashCode2 = (((((iHashCode + (d10 == null ? 0 : d10.hashCode())) * 31) + this.f21128e) * 31) + this.f21129f) * 31;
        String str = this.f21130g;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f21131h;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f21132i;
        int iHashCode5 = (((iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f21133j) * 31;
        String str4 = this.f21134k;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f21135l;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f21136m;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f21137n;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f21138o;
        int iHashCode10 = (iHashCode9 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f21139p;
        return iHashCode10 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String i() {
        return this.f21135l;
    }

    public final int j() {
        return this.f21133j;
    }

    public final String k() {
        return this.f21130g;
    }

    public final int l() {
        return this.f21129f;
    }

    public final String m() {
        return this.f21132i;
    }

    public final String n() {
        return this.f21134k;
    }

    public final Double o() {
        return this.f21127d;
    }

    public final String p() {
        return this.f21131h;
    }

    public String toString() {
        return "DefaultAdEntity(ad_creative_id=" + this.f21124a + ", codeSeatId=" + this.f21125b + ", ad_type=" + this.f21126c + ", price=" + this.f21127d + ", ad_request_ver=" + this.f21128e + ", displayed_times=" + this.f21129f + ", displayed_date=" + this.f21130g + ", start_date=" + this.f21131h + ", end_date=" + this.f21132i + ", display_max_times=" + this.f21133j + ", file_path=" + this.f21134k + ", default_country_white=" + this.f21135l + ", default_country_black=" + this.f21136m + ", default_brand_white=" + this.f21137n + ", default_brand_black=" + this.f21138o + ", ad_bean=" + this.f21139p + ')';
    }
}
