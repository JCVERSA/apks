package com.yandex.mobile.ads.impl;

import defpackage.y45;

public class fk {
    private final gz1 a;

    public fk(gz1 gz1Var) {
        y45.j(gz1Var, "sizeInfo");
        this.a = gz1Var;
    }

    public final gz1 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof fk) && y45.e(((fk) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
