package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class pl0 {
    private final String a;
    private final int b;
    private final int c;

    public pl0(int i, int i2, String str) {
        y45.j(str, "name");
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pl0)) {
            return false;
        }
        pl0 pl0Var = (pl0) obj;
        return y45.e(this.a, pl0Var.a) && this.b == pl0Var.b && this.c == pl0Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + dy1.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "InstalledPackage(name=" + this.a + ", minVersion=" + this.b + ", maxVersion=" + this.c + ")";
    }
}
