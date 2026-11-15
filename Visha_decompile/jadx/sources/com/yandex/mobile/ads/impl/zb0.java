package com.yandex.mobile.ads.impl;

public final class zb0 implements ex1 {
    private final ac0 a;
    private final long b;

    public zb0(ac0 ac0Var, long j) {
        this.a = ac0Var;
        this.b = j;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.a.b();
    }

    @Override
    public final ex1.a b(long j) {
        ac0 ac0Var = this.a;
        ac0.a aVar = ac0Var.k;
        if (aVar == null) {
            throw new IllegalStateException();
        }
        long[] jArr = aVar.a;
        long[] jArr2 = aVar.b;
        int iB = f92.b(jArr, ac0Var.a(j), false);
        long j2 = iB == -1 ? 0L : jArr[iB];
        long j3 = iB != -1 ? jArr2[iB] : 0L;
        long j4 = this.a.e;
        long j5 = (j2 * 1000000) / j4;
        long j6 = this.b;
        gx1 gx1Var = new gx1(j5, j3 + j6);
        if (j5 == j || iB == jArr.length - 1) {
            return new ex1.a(gx1Var, gx1Var);
        }
        int i = iB + 1;
        return new ex1.a(gx1Var, new gx1((jArr[i] * 1000000) / j4, j6 + jArr2[i]));
    }
}
