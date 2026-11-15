package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class w9 {
    private final boolean a;
    private final String b;
    private final String c;

    public w9(String str, String str2, boolean z) {
        y45.j(str, "token");
        y45.j(str2, "advertiserInfo");
        this.a = z;
        this.b = str;
        this.c = str2;
    }

    public final String a() {
        return this.c;
    }

    public final boolean b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w9)) {
            return false;
        }
        w9 w9Var = (w9) obj;
        return this.a == w9Var.a && y45.e(this.b, w9Var.b) && y45.e(this.c, w9Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + v3.a(this.b, Boolean.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "AdTuneInfo(shouldShow=" + this.a + ", token=" + this.b + ", advertiserInfo=" + this.c + ")";
    }
}
