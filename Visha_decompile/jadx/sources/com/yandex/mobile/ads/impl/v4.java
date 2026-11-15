package com.yandex.mobile.ads.impl;

public final class v4 {
    private final int a;
    private final int b;

    public v4(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v4)) {
            return false;
        }
        v4 v4Var = (v4) obj;
        return this.a == v4Var.a && this.b == v4Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdInfo(adGroupIndex=" + this.a + ", adIndexInAdGroup=" + this.b + ")";
    }
}
