package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class sh2 {
    private final String a;
    private final int b;

    public sh2(int i, String str) {
        y45.j(str, "adUnitId");
        this.a = str;
        this.b = i;
    }

    public final String a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sh2)) {
            return false;
        }
        sh2 sh2Var = (sh2) obj;
        return y45.e(this.a, sh2Var.a) && this.b == sh2Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ViewSizeKey(adUnitId=" + this.a + ", screenOrientation=" + this.b + ")";
    }
}
