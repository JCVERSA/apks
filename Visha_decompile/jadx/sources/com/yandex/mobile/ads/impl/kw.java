package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class kw {
    private final String a;
    private final String b;
    private final String c;
    private final nw d;

    public kw(String str, String str2, String str3, nw nwVar) {
        y45.j(str, "name");
        y45.j(str2, "format");
        y45.j(str3, "adUnitId");
        y45.j(nwVar, "mediation");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = nwVar;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final nw c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kw)) {
            return false;
        }
        kw kwVar = (kw) obj;
        return y45.e(this.a, kwVar.a) && y45.e(this.b, kwVar.b) && y45.e(this.c, kwVar.c) && y45.e(this.d, kwVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + v3.a(this.c, v3.a(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "DebugPanelAdUnitFullData(name=" + this.a + ", format=" + this.b + ", adUnitId=" + this.c + ", mediation=" + this.d + ")";
    }
}
