package com.google.android.exoplayer2.util;

import java.util.Arrays;

public final class t {

    private int f26886a;

    private long[] f26887b;

    public t() {
        this(32);
    }

    public void a(long j10) {
        int i10 = this.f26886a;
        long[] jArr = this.f26887b;
        if (i10 == jArr.length) {
            this.f26887b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f26887b;
        int i11 = this.f26886a;
        this.f26886a = i11 + 1;
        jArr2[i11] = j10;
    }

    public long b(int i10) {
        if (i10 >= 0 && i10 < this.f26886a) {
            return this.f26887b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f26886a);
    }

    public int c() {
        return this.f26886a;
    }

    public long[] d() {
        return Arrays.copyOf(this.f26887b, this.f26886a);
    }

    public t(int i10) {
        this.f26887b = new long[i10];
    }
}
