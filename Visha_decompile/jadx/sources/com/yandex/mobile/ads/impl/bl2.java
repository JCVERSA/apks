package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

final class bl2 implements hx1 {
    private final long a;
    private final int b;
    private final long c;
    private final long d;
    private final long e;

    @Nullable
    private final long[] f;

    private bl2(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.a = j;
        this.b = i;
        this.c = j2;
        this.f = jArr;
        this.d = j3;
        this.e = j3 != -1 ? j + j3 : -1L;
    }

    @Nullable
    public static bl2 a(long j, long j2, f21.a aVar, ag1 ag1Var) {
        int iX;
        int i = aVar.g;
        int i2 = aVar.d;
        int iH = ag1Var.h();
        if ((iH & 1) != 1 || (iX = ag1Var.x()) == 0) {
            return null;
        }
        long jA = f92.a(iX, ((long) i) * 1000000, i2);
        if ((iH & 6) != 6) {
            return new bl2(j2, aVar.c, jA, -1L, null);
        }
        long jV = ag1Var.v();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = ag1Var.t();
        }
        if (j != -1) {
            long j3 = j2 + jV;
            if (j != j3) {
                et0.d("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new bl2(j2, aVar.c, jA, jV, jArr);
    }

    @Override
    public final ex1.a b(long j) {
        if (!b()) {
            gx1 gx1Var = new gx1(0L, this.a + ((long) this.b));
            return new ex1.a(gx1Var, gx1Var);
        }
        long j2 = this.c;
        int i = f92.a;
        long jMax = Math.max(0L, Math.min(j, j2));
        double d = (jMax * 100.0d) / this.c;
        double d2 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d2 = 256.0d;
            } else {
                int i2 = (int) d;
                long[] jArr = this.f;
                if (jArr == null) {
                    throw new IllegalStateException();
                }
                double d3 = jArr[i2];
                d2 = d3 + (((i2 == 99 ? 256.0d : jArr[i2 + 1]) - d3) * (d - ((double) i2)));
            }
        }
        gx1 gx1Var2 = new gx1(jMax, this.a + Math.max(this.b, Math.min(Math.round((d2 / 256.0d) * this.d), this.d - 1)));
        return new ex1.a(gx1Var2, gx1Var2);
    }

    @Override
    public final long c() {
        return this.c;
    }

    @Override
    public final long a() {
        return this.e;
    }

    @Override
    public final long a(long j) {
        long j2 = j - this.a;
        if (!b() || j2 <= this.b) {
            return 0L;
        }
        long[] jArr = this.f;
        if (jArr != null) {
            double d = (j2 * 256.0d) / this.d;
            int iB = f92.b(jArr, (long) d, true);
            long j3 = this.c;
            long j4 = (((long) iB) * j3) / 100;
            long j5 = jArr[iB];
            int i = iB + 1;
            long j6 = (j3 * ((long) i)) / 100;
            long j7 = iB == 99 ? 256L : jArr[i];
            return Math.round((j5 == j7 ? 0.0d : (d - j5) / (j7 - j5)) * (j6 - j4)) + j4;
        }
        throw new IllegalStateException();
    }

    @Override
    public final boolean b() {
        return this.f != null;
    }
}
