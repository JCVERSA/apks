package com.yandex.mobile.ads.impl;

import java.util.Arrays;

public final class gt0 {
    private int a;
    private long[] b;

    public gt0() {
        this(0);
    }

    public final void a(long j) {
        int i = this.a;
        long[] jArr = this.b;
        if (i == jArr.length) {
            this.b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.b;
        int i2 = this.a;
        this.a = i2 + 1;
        jArr2[i2] = j;
    }

    public final long[] b() {
        return Arrays.copyOf(this.b, this.a);
    }

    public gt0(int i) {
        this.b = new long[32];
    }

    public final long a(int i) {
        if (i >= 0 && i < this.a) {
            return this.b[i];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.a);
    }

    public final int a() {
        return this.a;
    }
}
