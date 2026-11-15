package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xj0 {
    private final int a;
    private final int b;
    private final String c;
    private final String d;
    private final r02 e;
    private final boolean f;
    private final String g;

    public xj0(int i, int i2, String str, String str2, int i3) {
        this(i, i2, str, (i3 & 8) != 0 ? null : str2, null, true, null);
    }

    public final int a() {
        return this.b;
    }

    public final boolean b() {
        return this.f;
    }

    public final String c() {
        return this.g;
    }

    public final String d() {
        return this.d;
    }

    public final r02 e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xj0)) {
            return false;
        }
        xj0 xj0Var = (xj0) obj;
        return this.a == xj0Var.a && this.b == xj0Var.b && y45.e(this.c, xj0Var.c) && y45.e(this.d, xj0Var.d) && y45.e(this.e, xj0Var.e) && this.f == xj0Var.f && y45.e(this.g, xj0Var.g);
    }

    public final String f() {
        return this.c;
    }

    public final int g() {
        return this.a;
    }

    public final int hashCode() {
        int iA = v3.a(this.c, dy1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
        String str = this.d;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        r02 r02Var = this.e;
        int iA2 = a7.a(this.f, (iHashCode + (r02Var == null ? 0 : r02Var.hashCode())) * 31, 31);
        String str2 = this.g;
        return iA2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "ImageValue(width=" + this.a + ", height=" + this.b + ", url=" + this.c + ", sizeType=" + this.d + ", smartCenterSettings=" + this.e + ", preload=" + this.f + ", preview=" + this.g + ")";
    }

    public xj0(int i, int i2, String str, String str2, r02 r02Var, boolean z, String str3) {
        y45.j(str, "url");
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
        this.e = r02Var;
        this.f = z;
        this.g = str3;
    }
}
