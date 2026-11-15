package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class zx1 {
    private int a;
    private final int[] b = new int[10];

    public final int a(int i) {
        return this.b[i];
    }

    public final int b() {
        if ((this.a & 128) != 0) {
            return this.b[7];
        }
        return 65535;
    }

    public final int c() {
        if ((this.a & 16) != 0) {
            return this.b[4];
        }
        return Integer.MAX_VALUE;
    }

    public final int d() {
        return Integer.bitCount(this.a);
    }

    public final int a() {
        if ((this.a & 2) != 0) {
            return this.b[1];
        }
        return -1;
    }

    public final int b(int i) {
        return (this.a & 32) != 0 ? this.b[5] : i;
    }

    public final boolean c(int i) {
        return (this.a & (1 << i)) != 0;
    }

    public final void a(zx1 zx1Var) {
        y45.j(zx1Var, "other");
        for (int i = 0; i < 10; i++) {
            if (zx1Var.c(i)) {
                a(i, zx1Var.b[i]);
            }
        }
    }

    public final void a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.b;
            if (i >= iArr.length) {
                return;
            }
            this.a = (1 << i) | this.a;
            iArr[i] = i2;
        }
    }
}
