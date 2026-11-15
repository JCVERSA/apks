package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class jw {
    private final String a;
    private final String b;
    private final String c;

    public jw(String str, String str2, String str3) {
        y45.j(str, "name");
        y45.j(str2, "format");
        y45.j(str3, "adUnitId");
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jw)) {
            return false;
        }
        jw jwVar = (jw) obj;
        return y45.e(this.a, jwVar.a) && y45.e(this.b, jwVar.b) && y45.e(this.c, jwVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitData(name=" + this.a + ", format=" + this.b + ", adUnitId=" + this.c + ")";
    }
}
