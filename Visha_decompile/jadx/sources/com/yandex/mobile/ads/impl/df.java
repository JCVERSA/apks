package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class df {
    private final String a;
    private final String b;
    private final String c;

    public df(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof df)) {
            return false;
        }
        df dfVar = (df) obj;
        return y45.e(this.a, dfVar.a) && y45.e(this.b, dfVar.b) && y45.e(this.c, dfVar.c);
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
        return "AppMetricaIdentifiers(adGetUrl=" + this.a + ", deviceId=" + this.b + ", uuid=" + this.c + ")";
    }
}
