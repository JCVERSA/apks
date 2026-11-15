package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s20 {
    private final t20 a;
    private final String b;

    public s20(t20 t20Var, String str) {
        y45.j(t20Var, "type");
        y45.j(str, "assetName");
        this.a = t20Var;
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    public final t20 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s20)) {
            return false;
        }
        s20 s20Var = (s20) obj;
        return this.a == s20Var.a && y45.e(this.b, s20Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DivKitAsset(type=" + this.a + ", assetName=" + this.b + ")";
    }
}
