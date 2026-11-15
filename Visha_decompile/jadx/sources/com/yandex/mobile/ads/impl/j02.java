package com.yandex.mobile.ads.impl;

public final class j02 {
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;

    public j02(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i3 * i4;
    }

    public final int a() {
        return this.e;
    }

    public final int b() {
        return this.d;
    }

    public final int c() {
        return this.c;
    }

    public final int d() {
        return this.a;
    }

    public final int e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j02)) {
            return false;
        }
        j02 j02Var = (j02) obj;
        return this.a == j02Var.a && this.b == j02Var.b && this.c == j02Var.c && this.d == j02Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + dy1.a(this.c, dy1.a(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "SmartCenter(x=" + this.a + ", y=" + this.b + ", width=" + this.c + ", height=" + this.d + ")";
    }
}
