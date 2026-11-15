package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class uu0 {
    private final int a;
    private final vu0 b;

    public uu0(int i, vu0 vu0Var) {
        y45.j(vu0Var, defpackage.hb0.KEY_NAME_MODE);
        this.a = i;
        this.b = vu0Var;
    }

    public final vu0 a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uu0)) {
            return false;
        }
        uu0 uu0Var = (uu0) obj;
        return this.a == uu0Var.a && this.b == uu0Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "MeasuredSizeSpec(value=" + this.a + ", mode=" + this.b + ")";
    }
}
