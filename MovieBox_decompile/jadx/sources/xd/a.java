package xd;

import com.google.zxing.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public abstract class a {

    private static final int[] f75314a = {0, 4, 1, 5};

    private static final int[] f75315b = {6, 2, 7, 3};

    private static final int[] f75316c = {8, 1, 1, 1, 1, 1, 1, 3};

    private static final int[] f75317d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private static final int[] f75318e = {0, 180, 270, 90};

    private static kd.b a(kd.b bVar, int i10) {
        if (i10 % 360 == 0) {
            return bVar;
        }
        kd.b bVarClone = bVar.clone();
        bVarClone.o(i10);
        return bVarClone;
    }

    private static void b(k[] kVarArr, k[] kVarArr2, int[] iArr) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            kVarArr[iArr[i10]] = kVarArr2[i10];
        }
    }

    private static List c(boolean z10, kd.b bVar) {
        int iC;
        float fD;
        ArrayList<k[]> arrayList = new ArrayList();
        int iMax = 0;
        int i10 = 0;
        loop0: while (true) {
            int i11 = i10;
            while (iMax < bVar.k()) {
                k[] kVarArrG = g(bVar, iMax, i10);
                if (kVarArrG[0] == null && kVarArrG[3] == null) {
                    if (i11 == 0) {
                        break;
                    }
                    for (k[] kVarArr : arrayList) {
                        k kVar = kVarArr[1];
                        if (kVar != null) {
                            iMax = (int) Math.max(iMax, kVar.d());
                        }
                        k kVar2 = kVarArr[3];
                        if (kVar2 != null) {
                            iMax = Math.max(iMax, (int) kVar2.d());
                        }
                    }
                    iMax += 5;
                    i10 = 0;
                } else {
                    arrayList.add(kVarArrG);
                    if (!z10) {
                        break loop0;
                    }
                    k kVar3 = kVarArrG[2];
                    if (kVar3 != null) {
                        iC = (int) kVar3.c();
                        fD = kVarArrG[2].d();
                    } else {
                        iC = (int) kVarArrG[4].c();
                        fD = kVarArrG[4].d();
                    }
                    iMax = (int) fD;
                    i10 = iC;
                    i11 = 1;
                }
            }
            break loop0;
        }
        return arrayList;
    }

    public static b d(com.google.zxing.b bVar, Map map, boolean z10) {
        kd.b bVarA = bVar.a();
        for (int i10 : f75318e) {
            kd.b bVarA2 = a(bVarA, i10);
            List listC = c(z10, bVarA2);
            if (!listC.isEmpty()) {
                return new b(bVarA2, listC, i10);
            }
        }
        return new b(bVarA, new ArrayList(), 0);
    }

    private static int[] e(kd.b bVar, int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i13 = 0;
        while (bVar.h(i10, i11) && i10 > 0) {
            int i14 = i13 + 1;
            if (i13 >= 3) {
                break;
            }
            i10--;
            i13 = i14;
        }
        int length = iArr.length;
        int i15 = i10;
        int i16 = 0;
        boolean z10 = false;
        while (i10 < i12) {
            if (bVar.h(i10, i11) != z10) {
                iArr2[i16] = iArr2[i16] + 1;
            } else {
                if (i16 != length - 1) {
                    i16++;
                } else {
                    if (h(iArr2, iArr) < 0.42f) {
                        return new int[]{i15, i10};
                    }
                    i15 += iArr2[0] + iArr2[1];
                    int i17 = i16 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i17);
                    iArr2[i17] = 0;
                    iArr2[i16] = 0;
                    i16--;
                }
                iArr2[i16] = 1;
                z10 = !z10;
            }
            i10++;
        }
        if (i16 != length - 1 || h(iArr2, iArr) >= 0.42f) {
            return null;
        }
        return new int[]{i15, i10 - 1};
    }

    private static k[] f(kd.b bVar, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        boolean z10;
        int i15;
        k[] kVarArr = new k[4];
        int[] iArr2 = new int[iArr.length];
        int i16 = i12;
        while (true) {
            if (i16 >= i10) {
                z10 = false;
                break;
            }
            int[] iArrE = e(bVar, i13, i16, i11, iArr, iArr2);
            if (iArrE != null) {
                int i17 = i16;
                int[] iArr3 = iArrE;
                while (i17 > 0) {
                    int i18 = i17 - 1;
                    int[] iArrE2 = e(bVar, i13, i18, i11, iArr, iArr2);
                    if (iArrE2 == null) {
                        break;
                    }
                    iArr3 = iArrE2;
                    i17 = i18;
                }
                float f10 = i17;
                kVarArr[0] = new k(iArr3[0], f10);
                kVarArr[1] = new k(iArr3[1], f10);
                z10 = true;
                i16 = i17;
                break;
            }
            i16 += 5;
        }
        int i19 = i16 + 1;
        if (z10) {
            int[] iArr4 = {(int) kVarArr[0].c(), (int) kVarArr[1].c()};
            int i20 = i19;
            int i21 = 0;
            while (true) {
                if (i20 >= i10) {
                    i15 = i21;
                    break;
                }
                i15 = i21;
                int[] iArrE3 = e(bVar, iArr4[0], i20, i11, iArr, iArr2);
                if (iArrE3 != null && Math.abs(iArr4[0] - iArrE3[0]) < 5 && Math.abs(iArr4[1] - iArrE3[1]) < 5) {
                    iArr4 = iArrE3;
                    i21 = 0;
                } else {
                    if (i15 > 25) {
                        break;
                    }
                    i21 = i15 + 1;
                }
                i20++;
            }
            i19 = i20 - (i15 + 1);
            float f11 = i19;
            kVarArr[2] = new k(iArr4[0], f11);
            kVarArr[3] = new k(iArr4[1], f11);
        }
        if (i19 - i16 < i14) {
            Arrays.fill(kVarArr, (Object) null);
        }
        return kVarArr;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x004a A[PHI: r12 r13
      0x004a: PHI (r12v1 int) = (r12v0 int), (r12v6 int) binds: [B:3:0x0022, B:5:0x0033] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r13v1 int) = (r13v0 int), (r13v2 int) binds: [B:3:0x0022, B:5:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    private static k[] g(kd.b bVar, int i10, int i11) {
        int i12;
        int i13;
        int iMax;
        int iK = bVar.k();
        int iN = bVar.n();
        k[] kVarArr = new k[8];
        b(kVarArr, f(bVar, iK, iN, i10, i11, 10, f75316c), f75314a);
        k kVar = kVarArr[4];
        if (kVar != null) {
            i11 = (int) kVar.c();
            i10 = (int) kVarArr[4].d();
            k kVar2 = kVarArr[5];
            if (kVar2 != null) {
                i12 = i10;
                i13 = i11;
                iMax = (int) Math.max((((int) kVar2.d()) - i10) * 0.5f, 10.0f);
            } else {
                i12 = i10;
                i13 = i11;
                iMax = 10;
            }
        } else {
            i12 = i10;
            i13 = i11;
            iMax = 10;
        }
        b(kVarArr, f(bVar, iK, iN, i12, i13, iMax, f75317d), f75315b);
        return kVarArr;
    }

    private static float h(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f10 = i10;
        float f11 = f10 / i11;
        float f12 = 0.8f * f11;
        float f13 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            float f14 = iArr2[i13] * f11;
            float f15 = i14;
            float f16 = f15 > f14 ? f15 - f14 : f14 - f15;
            if (f16 > f12) {
                return Float.POSITIVE_INFINITY;
            }
            f13 += f16;
        }
        return f13 / f10;
    }
}
