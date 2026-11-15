package kd;

import com.google.zxing.NotFoundException;

public abstract class k {

    private static k f63954a = new e();

    /* JADX WARN: Code duplicated, block: B:18:0x0035  */
    /* JADX WARN: Code duplicated, block: B:20:0x0039 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x003b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:55:0x0041 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x007e A[SYNTHETIC] */
    protected static void a(b bVar, float[] fArr) {
        int iN = bVar.n();
        int iK = bVar.k();
        int length = fArr.length - 1;
        boolean z10 = true;
        for (int i10 = 0; i10 < length && z10; i10 += 2) {
            int i11 = (int) fArr[i10];
            int i12 = i10 + 1;
            int i13 = (int) fArr[i12];
            if (i11 < -1 || i11 > iN || i13 < -1 || i13 > iK) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i11 == -1) {
                fArr[i10] = 0.0f;
            } else {
                if (i11 == iN) {
                    fArr[i10] = iN - 1;
                } else {
                    z10 = false;
                }
                if (i13 == -1) {
                    fArr[i12] = 0.0f;
                } else {
                    if (i13 == iK) {
                        fArr[i12] = iK - 1;
                    }
                }
                z10 = true;
            }
            z10 = true;
            if (i13 == -1) {
                fArr[i12] = 0.0f;
            } else {
                if (i13 == iK) {
                    fArr[i12] = iK - 1;
                }
            }
            z10 = true;
        }
        boolean z11 = true;
        for (int length2 = fArr.length - 2; length2 >= 0 && z11; length2 -= 2) {
            int i14 = (int) fArr[length2];
            int i15 = length2 + 1;
            int i16 = (int) fArr[i15];
            if (i14 < -1 || i14 > iN || i16 < -1 || i16 > iK) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i14 == -1) {
                fArr[length2] = 0.0f;
            } else {
                if (i14 == iN) {
                    fArr[length2] = iN - 1;
                } else {
                    z11 = false;
                }
                if (i16 == -1) {
                    fArr[i15] = 0.0f;
                } else {
                    if (i16 == iK) {
                        fArr[i15] = iK - 1;
                    }
                }
                z11 = true;
            }
            z11 = true;
            if (i16 == -1) {
                fArr[i15] = 0.0f;
            } else {
                if (i16 == iK) {
                    fArr[i15] = iK - 1;
                }
            }
            z11 = true;
        }
    }

    public static k b() {
        return f63954a;
    }

    public abstract b c(b bVar, int i10, int i11, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23, float f24, float f25);

    public abstract b d(b bVar, int i10, int i11, n nVar);
}
