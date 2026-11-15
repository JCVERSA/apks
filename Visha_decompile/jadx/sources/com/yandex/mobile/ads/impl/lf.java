package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class lf {
    private final String a;
    private final String b;
    private final String c;

    public lf(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lf)) {
            return false;
        }
        lf lfVar = (lf) obj;
        return y45.e(this.a, lfVar.a) && y45.e(this.b, lfVar.b) && y45.e(this.c, lfVar.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "AppMetricaStartupParams(uuid=" + this.a + ", deviceId=" + this.b + ", getAdUrl=" + this.c + ")";
    }
}
