package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.IOException;

final class n72 {
    private boolean d;
    private boolean e;
    private boolean f;
    private final int a = TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES;
    private final p52 b = new p52(0);
    private long g = C.TIME_UNSET;
    private long h = C.TIME_UNSET;
    private long i = C.TIME_UNSET;
    private final ag1 c = new ag1();

    public final long a() {
        return this.i;
    }

    public final p52 b() {
        return this.b;
    }

    public final boolean c() {
        return this.d;
    }

    public final int a(wz wzVar, pj1 pj1Var, int i) throws IOException {
        if (i <= 0) {
            this.c.a(f92.f);
            this.d = true;
            wzVar.c();
            return 0;
        }
        boolean z = this.f;
        long j = C.TIME_UNSET;
        if (!z) {
            long jB = wzVar.b();
            int iMin = (int) Math.min(this.a, jB);
            long j2 = jB - ((long) iMin);
            if (wzVar.a() != j2) {
                pj1Var.a = j2;
                return 1;
            }
            this.c.c(iMin);
            wzVar.c();
            wzVar.b(this.c.c(), 0, iMin, false);
            ag1 ag1Var = this.c;
            int iD = ag1Var.d();
            int iE = ag1Var.e();
            for (int i2 = iE - 188; i2 >= iD; i2--) {
                byte[] bArrC = ag1Var.c();
                int i3 = 0;
                for (int i4 = -4; i4 <= 4; i4++) {
                    int i5 = (i4 * 188) + i2;
                    if (i5 >= iD && i5 < iE && bArrC[i5] == 71) {
                        i3++;
                        if (i3 == 5) {
                            long jA = q72.a(i2, i, ag1Var);
                            if (jA == C.TIME_UNSET) {
                                break;
                            }
                            j = jA;
                            break;
                        }
                    } else {
                        i3 = 0;
                    }
                }
            }
            this.h = j;
            this.f = true;
            return 0;
        }
        if (this.h == C.TIME_UNSET) {
            this.c.a(f92.f);
            this.d = true;
            wzVar.c();
            return 0;
        }
        if (this.e) {
            long j3 = this.g;
            if (j3 == C.TIME_UNSET) {
                this.c.a(f92.f);
                this.d = true;
                wzVar.c();
                return 0;
            }
            long jB2 = this.b.b(this.h) - this.b.b(j3);
            this.i = jB2;
            if (jB2 < 0) {
                et0.d("TsDurationReader", "Invalid duration: " + this.i + ". Using TIME_UNSET instead.");
                this.i = C.TIME_UNSET;
            }
            this.c.a(f92.f);
            this.d = true;
            wzVar.c();
            return 0;
        }
        int iMin2 = (int) Math.min(this.a, wzVar.b());
        long j4 = 0;
        if (wzVar.a() != j4) {
            pj1Var.a = j4;
            return 1;
        }
        this.c.c(iMin2);
        wzVar.c();
        wzVar.b(this.c.c(), 0, iMin2, false);
        ag1 ag1Var2 = this.c;
        int iE2 = ag1Var2.e();
        for (int iD2 = ag1Var2.d(); iD2 < iE2; iD2++) {
            if (ag1Var2.c()[iD2] == 71) {
                long jA2 = q72.a(iD2, i, ag1Var2);
                if (jA2 != C.TIME_UNSET) {
                    j = jA2;
                    break;
                }
            }
        }
        this.g = j;
        this.e = true;
        return 0;
    }
}
