package com.yandex.mobile.ads.impl;

import android.util.Pair;
import androidx.media3.common.C;

final class z01 implements hx1 {
    private final long[] a;
    private final long[] b;
    private final long c;

    private z01(long j, long[] jArr, long[] jArr2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j == C.TIME_UNSET ? f92.a(jArr2[jArr2.length - 1]) : j;
    }

    @Override
    public final long a() {
        return -1L;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.c;
    }

    public static z01 a(long j, y01 y01Var, long j2) {
        int length = y01Var.f.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += (long) (y01Var.d + y01Var.f[i3]);
            j3 += (long) (y01Var.e + y01Var.g[i3]);
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new z01(j2, jArr, jArr2);
    }

    @Override
    public final ex1.a b(long j) {
        long j2 = this.c;
        int i = f92.a;
        Pair<Long, Long> pairA = a(f92.b(Math.max(0L, Math.min(j, j2))), this.b, this.a);
        gx1 gx1Var = new gx1(f92.a(((Long) pairA.first).longValue()), ((Long) pairA.second).longValue());
        return new ex1.a(gx1Var, gx1Var);
    }

    @Override
    public final long a(long j) {
        return f92.a(((Long) a(j, this.a, this.b).second).longValue());
    }

    private static Pair<Long, Long> a(long j, long[] jArr, long[] jArr2) {
        int iB = f92.b(jArr, j, true);
        long j2 = jArr[iB];
        long j3 = jArr2[iB];
        int i = iB + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }
}
