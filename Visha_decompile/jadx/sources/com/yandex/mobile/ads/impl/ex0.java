package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class ex0 {
    private final wu0 a;
    private final lb2 b;
    private final List<xj0> c;

    public ex0(wu0 wu0Var, lb2 lb2Var, List<xj0> list) {
        this.a = wu0Var;
        this.b = lb2Var;
        this.c = list;
    }

    public static ex0 a(ex0 ex0Var, lb2 lb2Var) {
        return new ex0(ex0Var.a, lb2Var, ex0Var.c);
    }

    public final wu0 b() {
        return this.a;
    }

    public final lb2 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ex0)) {
            return false;
        }
        ex0 ex0Var = (ex0) obj;
        return y45.e(this.a, ex0Var.a) && y45.e(this.b, ex0Var.b) && y45.e(this.c, ex0Var.c);
    }

    public final int hashCode() {
        wu0 wu0Var = this.a;
        int iHashCode = (wu0Var == null ? 0 : wu0Var.hashCode()) * 31;
        lb2 lb2Var = this.b;
        int iHashCode2 = (iHashCode + (lb2Var == null ? 0 : lb2Var.hashCode())) * 31;
        List<xj0> list = this.c;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "MediaValue(media=" + this.a + ", video=" + this.b + ", imageValues=" + this.c + ")";
    }

    public final List<xj0> a() {
        return this.c;
    }
}
