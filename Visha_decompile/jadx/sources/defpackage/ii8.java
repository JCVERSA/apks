package defpackage;

import java.util.ArrayList;
import java.util.zip.Inflater;

public abstract class ii8 {
    public static hi8 a(byte[] bArr, int i) {
        ArrayList arrayListF;
        qw7 qw7Var = new qw7(bArr);
        try {
            arrayListF = c(qw7Var) ? f(qw7Var) : e(qw7Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListF = null;
        }
        if (arrayListF == null) {
            return null;
        }
        int size = arrayListF.size();
        if (size == 1) {
            return new hi8((hi8.a) arrayListF.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new hi8((hi8.a) arrayListF.get(0), (hi8.a) arrayListF.get(1), i);
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    public static boolean c(qw7 qw7Var) {
        qw7Var.P(4);
        int iN = qw7Var.n();
        qw7Var.O(0);
        return iN == 1886547818;
    }

    public static hi8.a d(qw7 qw7Var) {
        int iN = qw7Var.n();
        if (iN > 10000) {
            return null;
        }
        float[] fArr = new float[iN];
        for (int i = 0; i < iN; i++) {
            fArr[i] = qw7Var.m();
        }
        int iN2 = qw7Var.n();
        if (iN2 > 32000) {
            return null;
        }
        double d = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iN) * 2.0d) / dLog);
        pw7 pw7Var = new pw7(qw7Var.d());
        int i2 = 8;
        pw7Var.p(qw7Var.e() * 8);
        float[] fArr2 = new float[iN2 * 5];
        int i3 = 5;
        int[] iArr = new int[5];
        int i4 = 0;
        int i5 = 0;
        while (i4 < iN2) {
            int i6 = 0;
            while (i6 < i3) {
                int iB = iArr[i6] + b(pw7Var.h(iCeil));
                if (iB >= iN || iB < 0) {
                    return null;
                }
                fArr2[i5] = fArr[iB];
                iArr[i6] = iB;
                i6++;
                i5++;
                i3 = 5;
            }
            i4++;
            i3 = 5;
        }
        pw7Var.p((pw7Var.e() + 7) & (-8));
        int i7 = 32;
        int iH = pw7Var.h(32);
        hi8.b[] bVarArr = new hi8.b[iH];
        int i8 = 0;
        while (i8 < iH) {
            int iH2 = pw7Var.h(i2);
            int iH3 = pw7Var.h(i2);
            int iH4 = pw7Var.h(i7);
            if (iH4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iN2) * d) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i9 = 0; i9 < iH4; i9++) {
                iB2 += b(pw7Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iN2) {
                    return null;
                }
                int i10 = i9 * 3;
                int i11 = iB2 * 5;
                fArr3[i10] = fArr2[i11];
                fArr3[i10 + 1] = fArr2[i11 + 1];
                fArr3[i10 + 2] = fArr2[i11 + 2];
                int i12 = i9 * 2;
                fArr4[i12] = fArr2[i11 + 3];
                fArr4[i12 + 1] = fArr2[i11 + 4];
            }
            bVarArr[i8] = new hi8.b(iH2, fArr3, fArr4, iH3);
            i8++;
            i7 = 32;
            d = 2.0d;
            i2 = 8;
        }
        return new hi8.a(bVarArr);
    }

    public static ArrayList e(qw7 qw7Var) {
        if (qw7Var.C() != 0) {
            return null;
        }
        qw7Var.P(7);
        int iN = qw7Var.n();
        if (iN == 1684433976) {
            qw7 qw7Var2 = new qw7();
            Inflater inflater = new Inflater(true);
            try {
                if (!blb.j0(qw7Var, qw7Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                qw7Var = qw7Var2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iN != 1918990112) {
            return null;
        }
        return g(qw7Var);
    }

    public static ArrayList f(qw7 qw7Var) {
        int iN;
        qw7Var.P(8);
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        while (iE < iF && (iN = qw7Var.n() + iE) > iE && iN <= iF) {
            int iN2 = qw7Var.n();
            if (iN2 == 2037673328 || iN2 == 1836279920) {
                qw7Var.N(iN);
                return e(qw7Var);
            }
            qw7Var.O(iN);
            iE = iN;
        }
        return null;
    }

    public static ArrayList g(qw7 qw7Var) {
        ArrayList arrayList = new ArrayList();
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        while (iE < iF) {
            int iN = qw7Var.n() + iE;
            if (iN <= iE || iN > iF) {
                return null;
            }
            if (qw7Var.n() == 1835365224) {
                hi8.a aVarD = d(qw7Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            qw7Var.O(iN);
            iE = iN;
        }
        return arrayList;
    }
}
