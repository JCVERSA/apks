package defpackage;

import java.lang.reflect.Array;

public abstract class fj4 {
    public static u94 a(x94 x94Var, tc8 tc8Var) {
        int iD = x94Var.d();
        int i = 1 << iD;
        int iG = tc8Var.g();
        int i2 = 0;
        Class cls = Integer.TYPE;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) cls, iG, i);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) cls, iG, i);
        for (int i3 = 0; i3 < i; i3++) {
            iArr2[0][i3] = x94Var.f(tc8Var.e(i3));
        }
        for (int i4 = 1; i4 < iG; i4++) {
            for (int i5 = 0; i5 < i; i5++) {
                iArr2[i4][i5] = x94Var.h(iArr2[i4 - 1][i5], i5);
            }
        }
        int i6 = 0;
        while (i6 < iG) {
            int i7 = i2;
            while (i7 < i) {
                for (int i8 = i2; i8 <= i6; i8++) {
                    int[] iArr3 = iArr[i6];
                    iArr3[i7] = x94Var.a(iArr3[i7], x94Var.h(iArr2[i8][i7], tc8Var.f((iG + i8) - i6)));
                }
                i7++;
                i2 = 0;
            }
            i6++;
            i2 = 0;
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iG * iD, (i + 31) >>> 5);
        for (int i9 = 0; i9 < i; i9++) {
            int i10 = i9 >>> 5;
            int i11 = 1 << (i9 & 31);
            for (int i12 = 0; i12 < iG; i12++) {
                int i13 = iArr[i12][i9];
                for (int i14 = 0; i14 < iD; i14++) {
                    if (((i13 >>> i14) & 1) != 0) {
                        int[] iArr5 = iArr4[(((i12 + 1) * iD) - i14) - 1];
                        iArr5[i10] = iArr5[i10] ^ i11;
                    }
                }
            }
        }
        return new u94(i, iArr4);
    }
}
