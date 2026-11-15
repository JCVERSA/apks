package com.yandex.mobile.ads.impl;

import androidx.annotation.Dimension;

public final class h9 {
    private final int a;
    private final int b;

    public h9(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Dimension(unit = 0)
    public final int a() {
        return this.b;
    }

    @Dimension(unit = 0)
    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h9)) {
            return false;
        }
        h9 h9Var = (h9) obj;
        return this.a == h9Var.a && this.b == h9Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
