package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import java.io.IOException;

final class xm1 {
    private boolean c;
    private boolean d;
    private boolean e;
    private final p52 a = new p52(0);
    private long f = C.TIME_UNSET;
    private long g = C.TIME_UNSET;
    private long h = C.TIME_UNSET;
    private final ag1 b = new ag1();

    public final long a() {
        return this.h;
    }

    public final p52 b() {
        return this.a;
    }

    public final boolean c() {
        return this.c;
    }

    public final int a(wz wzVar, pj1 pj1Var) throws IOException {
        boolean z = this.e;
        long j = C.TIME_UNSET;
        if (!z) {
            long jB = wzVar.b();
            int iMin = (int) Math.min(20000L, jB);
            long j2 = jB - ((long) iMin);
            if (wzVar.a() != j2) {
                pj1Var.a = j2;
                return 1;
            }
            this.b.c(iMin);
            wzVar.c();
            wzVar.b(this.b.c(), 0, iMin, false);
            ag1 ag1Var = this.b;
            int iD = ag1Var.d();
            for (int iE = ag1Var.e() - 4; iE >= iD; iE--) {
                byte[] bArrC = ag1Var.c();
                if (((bArrC[iE + 3] & 255) | ((bArrC[iE] & 255) << 24) | ((bArrC[iE + 1] & 255) << 16) | ((bArrC[iE + 2] & 255) << 8)) == 442) {
                    ag1Var.e(iE + 4);
                    long jA = a(ag1Var);
                    if (jA != C.TIME_UNSET) {
                        j = jA;
                        break;
                    }
                }
            }
            this.g = j;
            this.e = true;
            return 0;
        }
        if (this.g == C.TIME_UNSET) {
            this.b.a(f92.f);
            this.c = true;
            wzVar.c();
            return 0;
        }
        if (this.d) {
            long j3 = this.f;
            if (j3 == C.TIME_UNSET) {
                this.b.a(f92.f);
                this.c = true;
                wzVar.c();
                return 0;
            }
            long jB2 = this.a.b(this.g) - this.a.b(j3);
            this.h = jB2;
            if (jB2 < 0) {
                et0.d("PsDurationReader", "Invalid duration: " + this.h + ". Using TIME_UNSET instead.");
                this.h = C.TIME_UNSET;
            }
            this.b.a(f92.f);
            this.c = true;
            wzVar.c();
            return 0;
        }
        int iMin2 = (int) Math.min(20000L, wzVar.b());
        long j4 = 0;
        if (wzVar.a() != j4) {
            pj1Var.a = j4;
            return 1;
        }
        this.b.c(iMin2);
        wzVar.c();
        wzVar.b(this.b.c(), 0, iMin2, false);
        ag1 ag1Var2 = this.b;
        int iD2 = ag1Var2.d();
        int iE2 = ag1Var2.e();
        while (iD2 < iE2 - 3) {
            byte[] bArrC2 = ag1Var2.c();
            int i = iD2 + 1;
            if (((bArrC2[iD2 + 3] & 255) | ((bArrC2[iD2] & 255) << 24) | ((bArrC2[i] & 255) << 16) | ((bArrC2[iD2 + 2] & 255) << 8)) == 442) {
                ag1Var2.e(iD2 + 4);
                long jA2 = a(ag1Var2);
                if (jA2 != C.TIME_UNSET) {
                    j = jA2;
                    break;
                }
            }
            iD2 = i;
        }
        this.f = j;
        this.d = true;
        return 0;
    }

    public static long a(ag1 ag1Var) {
        int iD = ag1Var.d();
        if (ag1Var.a() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        ag1Var.a(bArr, 0, 9);
        ag1Var.e(iD);
        byte b = bArr[0];
        if ((b & 196) == 68) {
            byte b2 = bArr[2];
            if ((b2 & 4) == 4) {
                byte b3 = bArr[4];
                if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j = b;
                    long j2 = b2;
                    return ((j2 & 3) << 13) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((((long) bArr[1]) & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((((long) bArr[3]) & 255) << 5) | ((((long) b3) & 248) >> 3);
                }
            }
        }
        return C.TIME_UNSET;
    }
}
