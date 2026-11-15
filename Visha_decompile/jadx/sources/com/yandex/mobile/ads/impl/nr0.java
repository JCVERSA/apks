package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class nr0 {
    private final Integer a;
    private final Integer b;

    public nr0(Integer num, Integer num2) {
        this.a = num;
        this.b = num2;
    }

    public final Integer a() {
        return this.b;
    }

    public final Integer b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nr0)) {
            return false;
        }
        nr0 nr0Var = (nr0) obj;
        return y45.e(this.a, nr0Var.a) && y45.e(this.b, nr0Var.b);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        return iHashCode + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        return "LayoutParamsSize(width=" + this.a + ", height=" + this.b + ")";
    }
}
