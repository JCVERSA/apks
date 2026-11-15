package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;

public class wr implements ex1 {
    private final long a;
    private final long b;
    private final int c;
    private final long d;
    private final int e;
    private final long f;
    private final boolean g;

    public wr(int i, int i2, long j, long j2, boolean z) {
        this.a = j;
        this.b = j2;
        this.c = i2 == -1 ? 1 : i2;
        this.e = i;
        this.g = z;
        if (j == -1) {
            this.d = -1L;
            this.f = C.TIME_UNSET;
        } else {
            this.d = j - j2;
            this.f = a(i, j, j2);
        }
    }

    public long a(long j) {
        return c(j);
    }

    @Override
    public final ex1.a b(long j) {
        long j2 = this.d;
        if (j2 == -1 && !this.g) {
            gx1 gx1Var = new gx1(0L, this.b);
            return new ex1.a(gx1Var, gx1Var);
        }
        long j3 = (((long) this.e) * j) / 8000000;
        long j4 = this.c;
        long jMin = (j3 / j4) * j4;
        if (j2 != -1) {
            jMin = Math.min(jMin, j2 - j4);
        }
        long jMax = Math.max(jMin, 0L);
        long j5 = this.b;
        long j6 = jMax + j5;
        long jA = a(this.e, j6, j5);
        gx1 gx1Var2 = new gx1(jA, j6);
        if (this.d != -1 && jA < j) {
            long j7 = j6 + ((long) this.c);
            if (j7 < this.a) {
                return new ex1.a(gx1Var2, new gx1(a(this.e, j7, this.b), j7));
            }
        }
        return new ex1.a(gx1Var2, gx1Var2);
    }

    @Override
    public final long c() {
        return this.f;
    }

    private static long a(int i, long j, long j2) {
        return (Math.max(0L, j - j2) * 8000000) / ((long) i);
    }

    public final long c(long j) {
        return a(this.e, j, this.b);
    }

    @Override
    public final boolean b() {
        return this.d != -1 || this.g;
    }
}
