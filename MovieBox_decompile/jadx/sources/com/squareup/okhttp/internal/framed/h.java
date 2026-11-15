package com.squareup.okhttp.internal.framed;

import java.util.Arrays;

public final class h {

    private int f39585a;

    private int f39586b;

    private int f39587c;

    private final int[] f39588d = new int[10];

    void a() {
        this.f39587c = 0;
        this.f39586b = 0;
        this.f39585a = 0;
        Arrays.fill(this.f39588d, 0);
    }

    int b(int i10) {
        int i11 = h(i10) ? 2 : 0;
        return k(i10) ? i11 | 1 : i11;
    }

    int c(int i10) {
        return this.f39588d[i10];
    }

    int d() {
        if ((this.f39585a & 2) != 0) {
            return this.f39588d[1];
        }
        return -1;
    }

    int e(int i10) {
        return (this.f39585a & 128) != 0 ? this.f39588d[7] : i10;
    }

    int f(int i10) {
        return (this.f39585a & 16) != 0 ? this.f39588d[4] : i10;
    }

    int g(int i10) {
        return (this.f39585a & 32) != 0 ? this.f39588d[5] : i10;
    }

    boolean h(int i10) {
        return ((1 << i10) & this.f39587c) != 0;
    }

    boolean i(int i10) {
        return ((1 << i10) & this.f39585a) != 0;
    }

    void j(h hVar) {
        for (int i10 = 0; i10 < 10; i10++) {
            if (hVar.i(i10)) {
                l(i10, hVar.b(i10), hVar.c(i10));
            }
        }
    }

    boolean k(int i10) {
        return ((1 << i10) & this.f39586b) != 0;
    }

    h l(int i10, int i11, int i12) {
        int[] iArr = this.f39588d;
        if (i10 >= iArr.length) {
            return this;
        }
        int i13 = 1 << i10;
        this.f39585a |= i13;
        if ((i11 & 1) != 0) {
            this.f39586b |= i13;
        } else {
            this.f39586b &= ~i13;
        }
        if ((i11 & 2) != 0) {
            this.f39587c |= i13;
        } else {
            this.f39587c &= ~i13;
        }
        iArr[i10] = i12;
        return this;
    }

    int m() {
        return Integer.bitCount(this.f39585a);
    }
}
