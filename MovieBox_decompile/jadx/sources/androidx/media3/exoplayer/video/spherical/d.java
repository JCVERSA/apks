package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.i0;
import androidx.media3.common.util.j0;
import java.util.ArrayList;
import java.util.zip.Inflater;

abstract class d {
    public static c a(byte[] bArr, int i10) {
        ArrayList arrayListF;
        j0 j0Var = new j0(bArr);
        try {
            arrayListF = c(j0Var) ? f(j0Var) : e(j0Var);
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

    private static boolean c(j0 j0Var) {
        j0Var.X(4);
        int iQ = j0Var.q();
        j0Var.W(0);
        return iQ == 1886547818;
    }

    private static c.a d(j0 j0Var) {
        int iQ = j0Var.q();
        if (iQ > 10000) {
            return null;
        }
        float[] fArr = new float[iQ];
        for (int i10 = 0; i10 < iQ; i10++) {
            fArr[i10] = j0Var.p();
        }
        int iQ2 = j0Var.q();
        if (iQ2 > 32000) {
            return null;
        }
        double d10 = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iQ) * 2.0d) / dLog);
        i0 i0Var = new i0(j0Var.e());
        int i11 = 8;
        i0Var.p(j0Var.f() * 8);
        float[] fArr2 = new float[iQ2 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < iQ2) {
            int i15 = 0;
            while (i15 < i12) {
                int iB = iArr[i15] + b(i0Var.h(iCeil));
                if (iB >= iQ || iB < 0) {
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
        i0Var.p((i0Var.e() + 7) & (-8));
        int i16 = 32;
        int iH = i0Var.h(32);
        c.b[] bVarArr = new c.b[iH];
        int i17 = 0;
        while (i17 < iH) {
            int iH2 = i0Var.h(i11);
            int iH3 = i0Var.h(i11);
            int iH4 = i0Var.h(i16);
            if (iH4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iQ2) * d10) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i18 = 0; i18 < iH4; i18++) {
                iB2 += b(i0Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iQ2) {
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

    private static ArrayList e(j0 j0Var) {
        if (j0Var.H() != 0) {
            return null;
        }
        j0Var.X(7);
        int iQ = j0Var.q();
        if (iQ == 1684433976) {
            j0 j0Var2 = new j0();
            Inflater inflater = new Inflater(true);
            try {
                if (!a1.B0(j0Var, j0Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                j0Var = j0Var2;
            } catch (Throwable th2) {
                inflater.end();
                throw th2;
            }
        } else if (iQ != 1918990112) {
            return null;
        }
        return g(j0Var);
    }

    private static ArrayList f(j0 j0Var) {
        int iQ;
        j0Var.X(8);
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG && (iQ = j0Var.q() + iF) > iF && iQ <= iG) {
            int iQ2 = j0Var.q();
            if (iQ2 == 2037673328 || iQ2 == 1836279920) {
                j0Var.V(iQ);
                return e(j0Var);
            }
            j0Var.W(iQ);
            iF = iQ;
        }
        return null;
    }

    private static ArrayList g(j0 j0Var) {
        ArrayList arrayList = new ArrayList();
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG) {
            int iQ = j0Var.q() + iF;
            if (iQ <= iF || iQ > iG) {
                return null;
            }
            if (j0Var.q() == 1835365224) {
                c.a aVarD = d(j0Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            j0Var.W(iQ);
            iF = iQ;
        }
        return arrayList;
    }
}
