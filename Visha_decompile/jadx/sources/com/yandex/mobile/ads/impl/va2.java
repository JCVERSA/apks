package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

final class va2 implements hx1 {
    private final long[] a;
    private final long[] b;
    private final long c;
    private final long d;

    private va2(long[] jArr, long[] jArr2, long j, long j2) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j2;
    }

    @Nullable
    public static va2 a(long j, long j2, f21.a aVar, ag1 ag1Var) {
        int iT;
        ag1Var.f(10);
        int iH = ag1Var.h();
        if (iH <= 0) {
            return null;
        }
        int i = aVar.d;
        long jA = f92.a(iH, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int iZ = ag1Var.z();
        int iZ2 = ag1Var.z();
        int iZ3 = ag1Var.z();
        ag1Var.f(2);
        long j3 = j2 + ((long) aVar.c);
        long[] jArr = new long[iZ];
        long[] jArr2 = new long[iZ];
        int i2 = 0;
        long j4 = j2;
        while (i2 < iZ) {
            int i3 = iZ2;
            long j5 = j3;
            jArr[i2] = (((long) i2) * jA) / ((long) iZ);
            jArr2[i2] = Math.max(j4, j5);
            if (iZ3 == 1) {
                iT = ag1Var.t();
            } else if (iZ3 == 2) {
                iT = ag1Var.z();
            } else if (iZ3 == 3) {
                iT = ag1Var.w();
            } else {
                if (iZ3 != 4) {
                    return null;
                }
                iT = ag1Var.x();
            }
            j4 += ((long) iT) * ((long) i3);
            i2++;
            jArr = jArr;
            iZ2 = i3;
            j3 = j5;
        }
        long[] jArr3 = jArr;
        if (j != -1 && j != j4) {
            et0.d("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new va2(jArr3, jArr2, jA, j4);
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final long c() {
        return this.c;
    }

    @Override
    public final ex1.a b(long j) {
        int iB = f92.b(this.a, j, true);
        long[] jArr = this.a;
        long j2 = jArr[iB];
        long[] jArr2 = this.b;
        gx1 gx1Var = new gx1(j2, jArr2[iB]);
        if (j2 >= j || iB == jArr.length - 1) {
            return new ex1.a(gx1Var, gx1Var);
        }
        int i = iB + 1;
        return new ex1.a(gx1Var, new gx1(jArr[i], jArr2[i]));
    }

    @Override
    public final long a() {
        return this.d;
    }

    @Override
    public final long a(long j) {
        return this.a[f92.b(this.b, j, true)];
    }
}
