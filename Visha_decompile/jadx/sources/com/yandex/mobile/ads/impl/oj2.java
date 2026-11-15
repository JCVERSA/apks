package com.yandex.mobile.ads.impl;

final class oj2 implements ex1 {
    private final mj2 a;
    private final int b;
    private final long c;
    private final long d;
    private final long e;

    public oj2(mj2 mj2Var, int i, long j, long j2) {
        this.a = mj2Var;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / ((long) mj2Var.d);
        this.d = j3;
        this.e = c(j3);
    }

    private long c(long j) {
        return f92.a(j * ((long) this.b), 1000000L, this.a.c);
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final ex1.a b(long j) {
        long j2 = (((long) this.a.c) * j) / (((long) this.b) * 1000000);
        long j3 = this.d - 1;
        int i = f92.a;
        long jMax = Math.max(0L, Math.min(j2, j3));
        long j4 = (((long) this.a.d) * jMax) + this.c;
        long jC = c(jMax);
        gx1 gx1Var = new gx1(jC, j4);
        if (jC >= j || jMax == this.d - 1) {
            return new ex1.a(gx1Var, gx1Var);
        }
        long j5 = jMax + 1;
        return new ex1.a(gx1Var, new gx1(c(j5), (((long) this.a.d) * j5) + this.c));
    }

    @Override
    public final long c() {
        return this.e;
    }
}
