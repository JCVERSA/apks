package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class fz1 implements Comparable<fz1> {
    private final int b;
    private final int c;

    public fz1(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.b;
    }

    @Override
    public final int compareTo(fz1 fz1Var) {
        fz1 fz1Var2 = fz1Var;
        y45.j(fz1Var2, "other");
        return y45.l(this.b * this.c, fz1Var2.b * fz1Var2.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fz1)) {
            return false;
        }
        fz1 fz1Var = (fz1) obj;
        return this.b == fz1Var.b && this.c == fz1Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + (Integer.hashCode(this.b) * 31);
    }

    public final String toString() {
        return "Size(width=" + this.b + ", height=" + this.c + ")";
    }
}
