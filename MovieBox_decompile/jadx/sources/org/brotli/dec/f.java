package org.brotli.dec;

abstract class f {
    static void a(int[] iArr, int i10, int i11, int[] iArr2, int i12) {
        int[] iArr3 = new int[i12];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = iArr2[i14];
            iArr4[i15] = iArr4[i15] + 1;
        }
        iArr5[1] = 0;
        int i16 = 1;
        while (i16 < 15) {
            int i17 = i16 + 1;
            iArr5[i17] = iArr5[i16] + iArr4[i16];
            i16 = i17;
        }
        for (int i18 = 0; i18 < i12; i18++) {
            int i19 = iArr2[i18];
            if (i19 != 0) {
                int i20 = iArr5[i19];
                iArr5[i19] = i20 + 1;
                iArr3[i20] = i18;
            }
        }
        int i21 = 1 << i11;
        if (iArr5[15] == 1) {
            for (int i22 = 0; i22 < i21; i22++) {
                iArr[i10 + i22] = iArr3[0];
            }
            return;
        }
        int i23 = 2;
        int i24 = 2;
        int iB = 0;
        int i25 = 1;
        while (i25 <= i11) {
            while (iArr4[i25] > 0) {
                d(iArr, i10 + iB, i24, i21, iArr3[i13] | (i25 << 16));
                iB = b(iB, i25);
                iArr4[i25] = iArr4[i25] - 1;
                i13++;
            }
            i25++;
            i24 <<= 1;
        }
        int i26 = i21 - 1;
        int i27 = i11 + 1;
        int i28 = -1;
        int i29 = i10;
        while (i27 <= 15) {
            while (iArr4[i27] > 0) {
                int i30 = iB & i26;
                if (i30 != i28) {
                    i29 += i21;
                    int iC = c(iArr4, i27, i11);
                    iArr[i10 + i30] = ((iC + i11) << 16) | ((i29 - i10) - i30);
                    i21 = 1 << iC;
                    i28 = i30;
                }
                d(iArr, (iB >> i11) + i29, i23, i21, ((i27 - i11) << 16) | iArr3[i13]);
                iB = b(iB, i27);
                iArr4[i27] = iArr4[i27] - 1;
                i13++;
            }
            i27++;
            i23 <<= 1;
        }
    }

    private static int b(int i10, int i11) {
        int i12 = 1 << (i11 - 1);
        while ((i10 & i12) != 0) {
            i12 >>= 1;
        }
        return (i10 & (i12 - 1)) + i12;
    }

    private static int c(int[] iArr, int i10, int i11) {
        int i12;
        int i13 = 1 << (i10 - i11);
        while (i10 < 15 && (i12 = i13 - iArr[i10]) > 0) {
            i10++;
            i13 = i12 << 1;
        }
        return i10 - i11;
    }

    private static void d(int[] iArr, int i10, int i11, int i12, int i13) {
        do {
            i12 -= i11;
            iArr[i10 + i12] = i13;
        } while (i12 > 0);
    }
}
