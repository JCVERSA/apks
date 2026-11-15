package com.yandex.mobile.ads.impl;

public final class zk0 implements ex1 {
    private final long[] a;
    private final long[] b;
    private final long c;
    private final boolean d;

    public zk0(long j, long[] jArr, long[] jArr2) {
        hg.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.d = z;
        if (!z || jArr2[0] <= 0) {
            this.a = jArr;
            this.b = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.a = jArr3;
            long[] jArr4 = new long[i];
            this.b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.c = j;
    }

    @Override
    public final ex1.a b(long j) {
        if (!this.d) {
            gx1 gx1Var = gx1.c;
            return new ex1.a(gx1Var, gx1Var);
        }
        int iB = f92.b(this.b, j, true);
        long[] jArr = this.b;
        long j2 = jArr[iB];
        long[] jArr2 = this.a;
        gx1 gx1Var2 = new gx1(j2, jArr2[iB]);
        if (j2 == j || iB == jArr.length - 1) {
            return new ex1.a(gx1Var2, gx1Var2);
        }
        int i = iB + 1;
        return new ex1.a(gx1Var2, new gx1(jArr[i], jArr2[i]));
    }

    @Override
    public final long c() {
        return this.c;
    }

    @Override
    public final boolean b() {
        return this.d;
    }
}
