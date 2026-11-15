package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class g6 {
    private final List<m6> a;
    private final int b;
    private final int c;

    public g6(int i, int i2, List list) {
        y45.j(list, "items");
        this.a = list;
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        return this.b;
    }

    public final List<m6> b() {
        return this.a;
    }

    public final int c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g6)) {
            return false;
        }
        g6 g6Var = (g6) obj;
        return y45.e(this.a, g6Var.a) && this.b == g6Var.b && this.c == g6Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + dy1.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "AdPod(items=" + this.a + ", closableAdPosition=" + this.b + ", rewardAdPosition=" + this.c + ")";
    }
}
