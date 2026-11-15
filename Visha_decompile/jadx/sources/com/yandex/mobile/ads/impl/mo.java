package com.yandex.mobile.ads.impl;

import java.util.Arrays;

public final class mo implements ex1 {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    private final long f;

    public mo(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length <= 0) {
            this.f = 0L;
        } else {
            int i = length - 1;
            this.f = jArr2[i] + jArr3[i];
        }
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.a + ", sizes=" + Arrays.toString(this.b) + ", offsets=" + Arrays.toString(this.c) + ", timeUs=" + Arrays.toString(this.e) + ", durationsUs=" + Arrays.toString(this.d) + ")";
    }

    @Override
    public final ex1.a b(long j) {
        int iB = f92.b(this.e, j, true);
        long[] jArr = this.e;
        long j2 = jArr[iB];
        long[] jArr2 = this.c;
        gx1 gx1Var = new gx1(j2, jArr2[iB]);
        if (j2 >= j || iB == this.a - 1) {
            return new ex1.a(gx1Var, gx1Var);
        }
        int i = iB + 1;
        return new ex1.a(gx1Var, new gx1(jArr[i], jArr2[i]));
    }
}
