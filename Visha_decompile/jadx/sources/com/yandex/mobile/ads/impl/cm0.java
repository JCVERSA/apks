package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class cm0 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final String f;

    public cm0(String str, String str2, String str3, String str4, String str5, String str6) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.f;
    }

    public final String c() {
        return this.e;
    }

    public final String d() {
        return this.c;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cm0)) {
            return false;
        }
        cm0 cm0Var = (cm0) obj;
        return y45.e(this.a, cm0Var.a) && y45.e(this.b, cm0Var.b) && y45.e(this.c, cm0Var.c) && y45.e(this.d, cm0Var.d) && y45.e(this.e, cm0Var.e) && y45.e(this.f, cm0Var.f);
    }

    public final String f() {
        return this.d;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        return iHashCode5 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        return "InstreamAdInfo(adId=" + this.a + ", creativeId=" + this.b + ", bannerId=" + this.c + ", data=" + this.d + ", advertiserInfo=" + this.e + ", adParameters=" + this.f + ")";
    }
}
