package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class tu0 {
    private final uu0 a;
    private final uu0 b;

    public tu0(uu0 uu0Var, uu0 uu0Var2) {
        y45.j(uu0Var, "width");
        y45.j(uu0Var2, "height");
        this.a = uu0Var;
        this.b = uu0Var2;
    }

    public final uu0 a() {
        return this.b;
    }

    public final uu0 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tu0)) {
            return false;
        }
        tu0 tu0Var = (tu0) obj;
        return y45.e(this.a, tu0Var.a) && y45.e(this.b, tu0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MeasuredSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
