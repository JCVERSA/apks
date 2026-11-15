package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ig<T> {
    private final String a;
    private final String b;
    private final T c;
    private final vr0 d;
    private final boolean e;
    private final boolean f;

    public ig(String str, String str2, T t, vr0 vr0Var, boolean z, boolean z2) {
        y45.j(str, "name");
        y45.j(str2, "type");
        this.a = str;
        this.b = str2;
        this.c = t;
        this.d = vr0Var;
        this.e = z;
        this.f = z2;
    }

    public static ig a(ig igVar, ex0 ex0Var) {
        String str = igVar.a;
        String str2 = igVar.b;
        vr0 vr0Var = igVar.d;
        boolean z = igVar.e;
        boolean z2 = igVar.f;
        y45.j(str, "name");
        y45.j(str2, "type");
        return new ig(str, str2, ex0Var, vr0Var, z, z2);
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final T d() {
        return this.c;
    }

    public final boolean e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ig)) {
            return false;
        }
        ig igVar = (ig) obj;
        return y45.e(this.a, igVar.a) && y45.e(this.b, igVar.b) && y45.e(this.c, igVar.c) && y45.e(this.d, igVar.d) && this.e == igVar.e && this.f == igVar.f;
    }

    public final boolean f() {
        return this.f;
    }

    public final int hashCode() {
        int iA = v3.a(this.b, this.a.hashCode() * 31, 31);
        T t = this.c;
        int iHashCode = (iA + (t == null ? 0 : t.hashCode())) * 31;
        vr0 vr0Var = this.d;
        return Boolean.hashCode(this.f) + a7.a(this.e, (iHashCode + (vr0Var != null ? vr0Var.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "Asset(name=" + this.a + ", type=" + this.b + ", value=" + this.c + ", link=" + this.d + ", isClickable=" + this.e + ", isRequired=" + this.f + ")";
    }

    public final vr0 a() {
        return this.d;
    }
}
