package com.google.zxing.aztec.encoder;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

public abstract class c {

    private static final int[] f32014a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private static int[] a(kd.a aVar, int i10, int i11) {
        int[] iArr = new int[i11];
        int iM = aVar.m() / i10;
        for (int i12 = 0; i12 < iM; i12++) {
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                i13 |= aVar.i((i12 * i10) + i14) ? 1 << ((i10 - i14) - 1) : 0;
            }
            iArr[i12] = i13;
        }
        return iArr;
    }

    private static void b(kd.b bVar, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12 += 2) {
            int i13 = i10 - i12;
            int i14 = i13;
            while (true) {
                int i15 = i10 + i12;
                if (i14 <= i15) {
                    bVar.r(i14, i13);
                    bVar.r(i14, i15);
                    bVar.r(i13, i14);
                    bVar.r(i15, i14);
                    i14++;
                }
            }
        }
        int i16 = i10 - i11;
        bVar.r(i16, i16);
        int i17 = i16 + 1;
        bVar.r(i17, i16);
        bVar.r(i16, i17);
        int i18 = i10 + i11;
        bVar.r(i18, i16);
        bVar.r(i18, i17);
        bVar.r(i18, i18 - 1);
    }

    private static void c(kd.b bVar, boolean z10, int i10, kd.a aVar) {
        int i11 = i10 / 2;
        int i12 = 0;
        if (z10) {
            while (i12 < 7) {
                int i13 = (i11 - 3) + i12;
                if (aVar.i(i12)) {
                    bVar.r(i13, i11 - 5);
                }
                if (aVar.i(i12 + 7)) {
                    bVar.r(i11 + 5, i13);
                }
                if (aVar.i(20 - i12)) {
                    bVar.r(i13, i11 + 5);
                }
                if (aVar.i(27 - i12)) {
                    bVar.r(i11 - 5, i13);
                }
                i12++;
            }
            return;
        }
        while (i12 < 10) {
            int i14 = (i11 - 5) + i12 + (i12 / 5);
            if (aVar.i(i12)) {
                bVar.r(i14, i11 - 7);
            }
            if (aVar.i(i12 + 10)) {
                bVar.r(i11 + 7, i14);
            }
            if (aVar.i(29 - i12)) {
                bVar.r(i14, i11 + 7);
            }
            if (aVar.i(39 - i12)) {
                bVar.r(i11 - 7, i14);
            }
            i12++;
        }
    }

    public static a d(String str, int i10, int i11, Charset charset) {
        return e(str.getBytes(charset != null ? charset : StandardCharsets.ISO_8859_1), i10, i11, charset);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a e(byte[] bArr, int i10, int i11, Charset charset) {
        kd.a aVarI;
        int i12;
        boolean z10;
        int iAbs;
        int iJ;
        int i13;
        int i14;
        int i15 = 2;
        kd.a aVarA = new HighLevelEncoder(bArr, charset).a();
        int iM = ((aVarA.m() * i10) / 100) + 11;
        int iM2 = aVarA.m() + iM;
        int i16 = 32;
        int i17 = 4;
        int i18 = 0;
        int i19 = 1;
        if (i11 != 0) {
            boolean z11 = i11 < 0;
            iAbs = Math.abs(i11);
            if (iAbs > (z11 ? 4 : 32)) {
                throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i11)));
            }
            iJ = j(iAbs, z11);
            i12 = f32014a[iAbs];
            int i20 = iJ - (iJ % i12);
            aVarI = i(aVarA, i12);
            if (aVarI.m() + iM > i20) {
                z10 = z11;
                throw new IllegalArgumentException("Data to large for user specified layer");
            }
            if (z11) {
                z10 = z11;
                if (aVarI.m() > i12 * 64) {
                    throw new IllegalArgumentException("Data to large for user specified layer");
                }
            }
        } else {
            kd.a aVarI2 = null;
            int i21 = 0;
            int i22 = 0;
            while (true) {
                if (i21 > i16) {
                    throw new IllegalArgumentException("Data too large for an Aztec code");
                }
                boolean z12 = i21 <= 3 ? i19 : i18;
                int i23 = z12 != 0 ? i21 + 1 : i21;
                int iJ2 = j(i23, z12);
                if (iM2 > iJ2) {
                    i13 = i19;
                } else {
                    if (aVarI2 == null || i22 != f32014a[i23]) {
                        int i24 = f32014a[i23];
                        i22 = i24;
                        aVarI2 = i(aVarA, i24);
                    }
                    int i25 = iJ2 - (iJ2 % i22);
                    if ((z12 == 0 || aVarI2.m() <= i22 * 64) && aVarI2.m() + iM <= i25) {
                        aVarI = aVarI2;
                        i12 = i22;
                        z10 = z12;
                        iAbs = i23;
                        iJ = iJ2;
                        break;
                    }
                    i13 = 1;
                }
                i21 += i13;
                i19 = i13;
                i16 = 32;
                i17 = 4;
                i18 = 0;
            }
        }
        kd.a aVarF = f(aVarI, iJ, i12);
        int iM3 = aVarI.m() / i12;
        kd.a aVarG = g(z10, iAbs, iM3);
        int i26 = (z10 ? 11 : 14) + (iAbs * 4);
        int[] iArr = new int[i26];
        if (z10) {
            for (int i27 = i18; i27 < i26; i27 += i19) {
                iArr[i27] = i27;
            }
            i14 = i26;
        } else {
            int i28 = i26 / 2;
            i14 = i26 + 1 + (((i28 - 1) / 15) * 2);
            int i29 = i14 / 2;
            for (int i30 = i18; i30 < i28; i30 += i19) {
                int i31 = (i30 / 15) + i30;
                iArr[(i28 - i30) - 1] = (i29 - i31) - 1;
                iArr[i28 + i30] = i31 + i29 + i19;
            }
        }
        kd.b bVar = new kd.b(i14);
        int i32 = i18;
        int i33 = i32;
        while (i32 < iAbs) {
            int i34 = ((iAbs - i32) * i17) + (z10 ? 9 : 12);
            while (i18 < i34) {
                int i35 = i18 * 2;
                int i36 = 0;
                while (i36 < i15) {
                    if (aVarF.i(i33 + i35 + i36)) {
                        int i37 = i32 * 2;
                        bVar.r(iArr[i37 + i36], iArr[i37 + i18]);
                    }
                    if (aVarF.i((i34 * 2) + i33 + i35 + i36)) {
                        int i38 = i32 * 2;
                        bVar.r(iArr[i38 + i18], iArr[((i26 - 1) - i38) - i36]);
                    }
                    if (aVarF.i((i34 * 4) + i33 + i35 + i36)) {
                        int i39 = (i26 - 1) - (i32 * 2);
                        bVar.r(iArr[i39 - i36], iArr[i39 - i18]);
                    }
                    if (aVarF.i((i34 * 6) + i33 + i35 + i36)) {
                        int i40 = i32 * 2;
                        bVar.r(iArr[((i26 - 1) - i40) - i18], iArr[i40 + i36]);
                    }
                    i36++;
                    i19 = 1;
                    i15 = 2;
                }
                i18 += i19;
                i15 = 2;
            }
            i33 += i34 * 8;
            i32 += i19;
            i15 = 2;
            i17 = 4;
            i18 = 0;
        }
        c(bVar, z10, i14, aVarG);
        if (z10) {
            b(bVar, i14 / 2, 5);
        } else {
            int i41 = i14 / 2;
            b(bVar, i41, 7);
            int i42 = 0;
            int i43 = 0;
            while (i43 < (i26 / 2) - 1) {
                for (int i44 = i41 & 1; i44 < i14; i44 += 2) {
                    int i45 = i41 - i42;
                    bVar.r(i45, i44);
                    int i46 = i41 + i42;
                    bVar.r(i46, i44);
                    bVar.r(i44, i45);
                    bVar.r(i44, i46);
                }
                i43 += 15;
                i42 += 16;
            }
        }
        a aVar = new a();
        aVar.c(z10);
        aVar.f(i14);
        aVar.d(iAbs);
        aVar.b(iM3);
        aVar.e(bVar);
        return aVar;
    }

    private static kd.a f(kd.a aVar, int i10, int i11) {
        int iM = aVar.m() / i11;
        md.d dVar = new md.d(h(i11));
        int i12 = i10 / i11;
        int[] iArrA = a(aVar, i11, i12);
        dVar.b(iArrA, i12 - iM);
        kd.a aVar2 = new kd.a();
        aVar2.c(0, i10 % i11);
        for (int i13 : iArrA) {
            aVar2.c(i13, i11);
        }
        return aVar2;
    }

    static kd.a g(boolean z10, int i10, int i11) {
        kd.a aVar = new kd.a();
        if (z10) {
            aVar.c(i10 - 1, 2);
            aVar.c(i11 - 1, 6);
            return f(aVar, 28, 4);
        }
        aVar.c(i10 - 1, 5);
        aVar.c(i11 - 1, 11);
        return f(aVar, 40, 4);
    }

    private static md.a h(int i10) {
        if (i10 == 4) {
            return md.a.f66376k;
        }
        if (i10 == 6) {
            return md.a.f66375j;
        }
        if (i10 == 8) {
            return md.a.f66379n;
        }
        if (i10 == 10) {
            return md.a.f66374i;
        }
        if (i10 == 12) {
            return md.a.f66373h;
        }
        throw new IllegalArgumentException("Unsupported word size " + i10);
    }

    static kd.a i(kd.a aVar, int i10) {
        kd.a aVar2 = new kd.a();
        int iM = aVar.m();
        int i11 = (1 << i10) - 2;
        int i12 = 0;
        while (i12 < iM) {
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                int i15 = i12 + i14;
                if (i15 >= iM || aVar.i(i15)) {
                    i13 |= 1 << ((i10 - 1) - i14);
                }
            }
            int i16 = i13 & i11;
            if (i16 == i11) {
                aVar2.c(i16, i10);
            } else {
                if (i16 == 0) {
                    aVar2.c(i13 | 1, i10);
                } else {
                    aVar2.c(i13, i10);
                }
                i12 += i10;
            }
            i12--;
            i12 += i10;
        }
        return aVar2;
    }

    private static int j(int i10, boolean z10) {
        return ((z10 ? 88 : 112) + (i10 * 16)) * i10;
    }
}
