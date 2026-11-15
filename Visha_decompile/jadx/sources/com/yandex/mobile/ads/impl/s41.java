package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s41 {
    private final y61 a;
    private final o8<?> b;
    private final o3 c;

    public s41(o8 o8Var, o3 o3Var, y61 y61Var) {
        y45.j(y61Var, "nativeAdResponse");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        this.a = y61Var;
        this.b = o8Var;
        this.c = o3Var;
    }

    public static s41 a(s41 s41Var, y61 y61Var) {
        o8<?> o8Var = s41Var.b;
        o3 o3Var = s41Var.c;
        y45.j(y61Var, "nativeAdResponse");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        return new s41(o8Var, o3Var, y61Var);
    }

    public final o8<?> b() {
        return this.b;
    }

    public final y61 c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s41)) {
            return false;
        }
        s41 s41Var = (s41) obj;
        return y45.e(this.a, s41Var.a) && y45.e(this.b, s41Var.b) && y45.e(this.c, s41Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "NativeAdBlock(nativeAdResponse=" + this.a + ", adResponse=" + this.b + ", adConfiguration=" + this.c + ")";
    }

    public final o3 a() {
        return this.c;
    }
}
