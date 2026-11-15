package defpackage;

import java.lang.reflect.Array;

public class ae1 {
    public short[][] a(short[][] sArr, short[][] sArr2) {
        if (sArr.length == sArr2.length) {
            short[] sArr3 = sArr[0];
            if (sArr3.length == sArr2[0].length) {
                short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr3.length);
                for (int i = 0; i < sArr.length; i++) {
                    for (int i2 = 0; i2 < sArr[0].length; i2++) {
                        sArr4[i][i2] = t94.a(sArr[i][i2], sArr2[i][i2]);
                    }
                }
                return sArr4;
            }
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[][] b(short[][] sArr) {
        if (sArr.length == sArr[0].length) {
            return a(sArr, f(sArr));
        }
        throw new RuntimeException("Addition is not possible!");
    }

    public short[][] c(short[][] sArr, short[][] sArr2) {
        if (sArr[0].length != sArr2.length) {
            throw new RuntimeException("Multiplication is not possible!");
        }
        short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr2[0].length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr2.length; i2++) {
                for (int i3 = 0; i3 < sArr2[0].length; i3++) {
                    short sK = t94.k(sArr[i][i2], sArr2[i2][i3]);
                    short[] sArr4 = sArr3[i];
                    sArr4[i3] = t94.a(sArr4[i3], sK);
                }
            }
        }
        return sArr3;
    }

    public short[][][] d(short[][] sArr, short[][][] sArr2, short[][][] sArr3) {
        short[][] sArr4 = sArr2[0];
        int length = sArr4.length;
        short[][] sArr5 = sArr3[0];
        if (length == sArr5.length) {
            int length2 = sArr4[0].length;
            short[] sArr6 = sArr5[0];
            if (length2 == sArr6.length && sArr2.length == sArr[0].length && sArr3.length == sArr.length) {
                short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, sArr3.length, sArr5.length, sArr6.length);
                for (int i = 0; i < sArr2[0].length; i++) {
                    for (int i2 = 0; i2 < sArr2[0][0].length; i2++) {
                        for (int i3 = 0; i3 < sArr.length; i3++) {
                            for (int i4 = 0; i4 < sArr[0].length; i4++) {
                                short sK = t94.k(sArr[i3][i4], sArr2[i4][i][i2]);
                                short[] sArr8 = sArr7[i3][i];
                                sArr8[i2] = t94.a(sArr8[i2], sK);
                            }
                            short[] sArr9 = sArr7[i3][i];
                            sArr9[i2] = t94.a(sArr3[i3][i][i2], sArr9[i2]);
                        }
                    }
                }
                return sArr7;
            }
        }
        throw new RuntimeException("Multiplication not possible!");
    }

    public short[][] e(short[][] sArr) {
        if (sArr.length != sArr[0].length) {
            throw new RuntimeException("Computation to upper triangular matrix is not possible!");
        }
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr.length, sArr.length);
        int i = 0;
        while (i < sArr.length) {
            sArr2[i][i] = sArr[i][i];
            int i2 = i + 1;
            for (int i3 = i2; i3 < sArr[0].length; i3++) {
                sArr2[i][i3] = t94.a(sArr[i][i3], sArr[i3][i]);
            }
            i = i2;
        }
        return sArr2;
    }

    public short[][] f(short[][] sArr) {
        short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) Short.TYPE, sArr[0].length, sArr.length);
        for (int i = 0; i < sArr.length; i++) {
            for (int i2 = 0; i2 < sArr[0].length; i2++) {
                sArr2[i2][i] = sArr[i][i2];
            }
        }
        return sArr2;
    }
}
