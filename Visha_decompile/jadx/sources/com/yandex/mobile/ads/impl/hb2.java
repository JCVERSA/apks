package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class hb2 implements Comparable<hb2> {
    private final int b;
    private final int c;
    private final int d;

    public hb2(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    @Override
    public final int compareTo(hb2 hb2Var) {
        y45.j(hb2Var, "other");
        int i = this.b;
        int i2 = hb2Var.b;
        if (i != i2) {
            return y45.l(i, i2);
        }
        int i3 = this.c;
        int i4 = hb2Var.c;
        return i3 != i4 ? y45.l(i3, i4) : y45.l(this.d, hb2Var.d);
    }

    public final int a() {
        return this.b;
    }
}
