package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.zip.Inflater;

abstract class d {
    public static c a(byte[] bArr, int i10) {
        ArrayList arrayListF;
        d0 d0Var = new d0(bArr);
        try {
            arrayListF = c(d0Var) ? f(d0Var) : e(d0Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListF = null;
        }
        if (arrayListF == null) {
            return null;
        }
        int size = arrayListF.size();
        if (size == 1) {
            return new c((c.a) arrayListF.get(0), i10);
        }
        if (size != 2) {
            return null;
        }
        return new c((c.a) arrayListF.get(0), (c.a) arrayListF.get(1), i10);
    }

    private static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >> 1);
    }

    private static boolean c(d0 d0Var) {
        d0Var.Q(4);
        int iN = d0Var.n();
        d0Var.P(0);
        return iN == 1886547818;
    }

    private static c.a d(d0 d0Var) {
        int iN = d0Var.n();
        if (iN > 10000) {
            return null;
        }
        float[] fArr = new float[iN];
        for (int i10 = 0; i10 < iN; i10++) {
            fArr[i10] = d0Var.m();
        }
        int iN2 = d0Var.n();
        if (iN2 > 32000) {
            return null;
        }
        double d10 = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iN) * 2.0d) / dLog);
        c0 c0Var = new c0(d0Var.d());
        int i11 = 8;
        c0Var.p(d0Var.e() * 8);
        float[] fArr2 = new float[iN2 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < iN2) {
            int i15 = 0;
            while (i15 < i12) {
                int iB = iArr[i15] + b(c0Var.h(iCeil));
                if (iB >= iN || iB < 0) {
                    return null;
                }
                fArr2[i14] = fArr[iB];
                iArr[i15] = iB;
                i15++;
                i14++;
                i12 = 5;
            }
            i13++;
            i12 = 5;
        }
        c0Var.p((c0Var.e() + 7) & (-8));
        int i16 = 32;
        int iH = c0Var.h(32);
        c.b[] bVarArr = new c.b[iH];
        int i17 = 0;
        while (i17 < iH) {
            int iH2 = c0Var.h(i11);
            int iH3 = c0Var.h(i11);
            int iH4 = c0Var.h(i16);
            if (iH4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iN2) * d10) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i18 = 0; i18 < iH4; i18++) {
                iB2 += b(c0Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iN2) {
                    return null;
                }
                int i19 = i18 * 3;
                int i20 = iB2 * 5;
                fArr3[i19] = fArr2[i20];
                fArr3[i19 + 1] = fArr2[i20 + 1];
                fArr3[i19 + 2] = fArr2[i20 + 2];
                int i21 = i18 * 2;
                fArr4[i21] = fArr2[i20 + 3];
                fArr4[i21 + 1] = fArr2[i20 + 4];
            }
            bVarArr[i17] = new c.b(iH2, fArr3, fArr4, iH3);
            i17++;
            i16 = 32;
            d10 = 2.0d;
            i11 = 8;
        }
        return new c.a(bVarArr);
    }

    private static ArrayList e(d0 d0Var) {
        if (d0Var.D() != 0) {
            return null;
        }
        d0Var.Q(7);
        int iN = d0Var.n();
        if (iN == 1684433976) {
            d0 d0Var2 = new d0();
            Inflater inflater = new Inflater(true);
            try {
                if (!p0.r0(d0Var, d0Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                d0Var = d0Var2;
            } catch (Throwable th2) {
                inflater.end();
                throw th2;
            }
        } else if (iN != 1918990112) {
            return null;
        }
        return g(d0Var);
    }

    private static ArrayList f(d0 d0Var) {
        int iN;
        d0Var.Q(8);
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF && (iN = d0Var.n() + iE) > iE && iN <= iF) {
            int iN2 = d0Var.n();
            if (iN2 == 2037673328 || iN2 == 1836279920) {
                d0Var.O(iN);
                return e(d0Var);
            }
            d0Var.P(iN);
            iE = iN;
        }
        return null;
    }

    private static ArrayList g(d0 d0Var) {
        ArrayList arrayList = new ArrayList();
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF) {
            int iN = d0Var.n() + iE;
            if (iN <= iE || iN > iF) {
                return null;
            }
            if (d0Var.n() == 1835365224) {
                c.a aVarD = d(d0Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            d0Var.P(iN);
            iE = iN;
        }
        return arrayList;
    }
}
