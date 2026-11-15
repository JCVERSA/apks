package com.yandex.mobile.ads.impl;

public final class mh2 {
    private final int a;
    private final int b;

    public mh2(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mh2)) {
            return false;
        }
        mh2 mh2Var = (mh2) obj;
        return this.a == mh2Var.a && this.b == mh2Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "ViewSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
