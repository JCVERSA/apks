package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ui {
    private final String a;
    private final String b;
    private final String c;
    private final String d;

    public ui(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ui)) {
            return false;
        }
        ui uiVar = (ui) obj;
        return y45.e(this.a, uiVar.a) && y45.e(this.b, uiVar.b) && y45.e(this.c, uiVar.c) && y45.e(this.d, uiVar.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return "BackgroundColors(top=" + this.a + ", right=" + this.b + ", left=" + this.c + ", bottom=" + this.d + ")";
    }
}
