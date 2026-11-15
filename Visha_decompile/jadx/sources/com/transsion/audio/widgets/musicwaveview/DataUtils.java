package com.transsion.audio.widgets.musicwaveview;

public class DataUtils {
    public static void calculateDB(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            if (Float.compare(fArr[i], 0.1f) == -1) {
                fArr[i] = 0.0f;
            } else {
                fArr[i] = (float) (Math.log10(fArr[i]) * 20.0d);
            }
        }
    }

    public static void calculateFft(float[] fArr, byte[] bArr) {
        int length = bArr.length / 2;
        if (fArr.length > length + 1) {
            throw new IllegalArgumentException("calculateFft float array size must small than (fft.length /2 + 1)");
        }
        fArr[0] = Math.abs((int) bArr[0]);
        if (fArr.length > length) {
            fArr[length] = Math.abs((int) bArr[1]);
        }
        for (int i = 1; i < fArr.length; i++) {
            int i2 = i * 2;
            fArr[i] = (float) Math.hypot(bArr[i2], bArr[i2 + 1]);
        }
    }

    public static void filterAverage(float[] fArr, int i) {
        float[] fArr2 = new float[i];
        int i2 = 0;
        float f = 0.0f;
        for (int i3 = 0; i3 < i; i3++) {
            fArr2[i3] = fArr[i3];
            f += fArr[i3];
        }
        float f2 = i;
        float f3 = f / f2;
        for (int i4 = 0; i4 < i; i4++) {
            if (fArr[i4] < f3) {
                fArr[i4] = 0.0f;
            }
        }
        int i5 = i;
        while (i5 < fArr.length) {
            int i6 = i2 % i;
            float f4 = fArr[i5];
            f3 = (f3 + (f4 / f2)) - (fArr2[i6] / f2);
            fArr2[i6] = f4;
            if (fArr[i5] < f3) {
                fArr[i5] = 0.0f;
            }
            i5++;
            i2 = i6 + 1;
        }
    }

    public static void insertValue7(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4, float[] fArr5, float[] fArr6, float[] fArr7, float[] fArr8, float[] fArr9) {
        for (int i = 0; i < fArr2.length; i++) {
            float f = (fArr[i] + fArr2[i]) / 2.0f;
            fArr6[i] = f;
            float f2 = (fArr[i] + f) / 2.0f;
            fArr4[i] = f2;
            fArr3[i] = (f2 + fArr[i]) / 2.0f;
            fArr5[i] = (fArr4[i] + fArr6[i]) / 2.0f;
            float f3 = (fArr6[i] + fArr2[i]) / 2.0f;
            fArr8[i] = f3;
            fArr7[i] = (f3 + fArr6[i]) / 2.0f;
            fArr9[i] = (fArr8[i] + fArr2[i]) / 2.0f;
        }
    }

    public static void savitzkyGolay(float[] fArr, int i) {
        int i2;
        int length = fArr.length;
        float[] fArr2 = new float[length];
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i / 2;
            if (i3 > i4) {
                iArr[i3] = iArr[i4] - (i3 - i4);
            } else {
                iArr[i3] = i3 + 1;
            }
        }
        int i5 = 0;
        float f = 0.0f;
        while (true) {
            i2 = i / 2;
            if (i5 >= i2) {
                break;
            }
            f += iArr[i5];
            i5++;
        }
        float f2 = (f * 2.0f) + iArr[i2];
        for (int i6 = 0; i6 < length; i6++) {
            float f3 = 0.0f;
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = (i6 - i2) + i7;
                if (i8 < 0) {
                    i8 = (length - i2) + i7;
                } else if (i8 > length - 1) {
                    i8 = (i7 - i2) - 1;
                }
                f3 += iArr[i7] * fArr[i8];
            }
            fArr2[i6] = f3 / f2;
        }
        System.arraycopy(fArr2, 0, fArr, 0, length);
    }

    public static float[] savitzkyGolay7(float[] fArr) {
        int length = fArr.length;
        float[] fArr2 = new float[length];
        float f = 16;
        float f2 = 1;
        int i = length - 3;
        float f3 = 2;
        int i2 = length - 2;
        int i3 = 3;
        float f4 = 3;
        int i4 = length - 1;
        float f5 = 4;
        float f6 = (fArr[i] * f2) + (fArr[i2] * f3) + (fArr[i4] * f4) + (fArr[0] * f5);
        float f7 = fArr[1];
        float f8 = fArr[2];
        float f9 = fArr[3];
        fArr2[0] = (((f6 + (f4 * f7)) + (f3 * f8)) + (f2 * f9)) / f;
        float f10 = (fArr[i2] * f2) + (fArr[i4] * f3);
        float f11 = fArr[0];
        float f12 = fArr[4];
        fArr2[1] = (((((f10 + (f4 * f11)) + (f7 * f5)) + (f4 * f8)) + (f3 * f9)) + (f2 * f12)) / f;
        fArr2[2] = (((((((fArr[i4] * f2) + (f11 * f3)) + (fArr[1] * f4)) + (f8 * f5)) + (f9 * f4)) + (f12 * f3)) + (fArr[5] * f2)) / f;
        while (i3 < i) {
            int i5 = i3 + 1;
            fArr2[i3] = (((((((fArr[i3 - 3] * f2) + (fArr[i3 - 2] * f3)) + (fArr[i3 - 1] * f4)) + (fArr[i3] * f5)) + (fArr[i5] * f4)) + (fArr[i3 + 2] * f3)) + (fArr[i3 + 3] * f2)) / f;
            i3 = i5;
        }
        int i6 = length - 4;
        int i7 = length - 5;
        fArr2[i] = (((((((fArr[0] * f2) + (fArr[i4] * f3)) + (fArr[i2] * f4)) + (fArr[i] * f5)) + (fArr[i6] * f4)) + (fArr[i7] * f3)) + (fArr[length - 6] * f2)) / f;
        fArr2[i2] = (((((((fArr[1] * f2) + (fArr[0] * f3)) + (fArr[i4] * f4)) + (fArr[i2] * f5)) + (fArr[i] * f4)) + (fArr[i6] * f3)) + (fArr[i7] * f2)) / f;
        fArr2[i4] = (((((((fArr[2] * f2) + (fArr[1] * f3)) + (fArr[0] * f4)) + (f5 * fArr[i4])) + (f4 * fArr[i2])) + (f3 * fArr[i])) + (f2 * fArr[i6])) / f;
        return fArr2;
    }

    public static float[] smoothNum(float[] fArr, int i) {
        if (fArr == null || fArr.length <= 0 || i <= 0) {
            return fArr;
        }
        float[] fArr2 = new float[fArr.length];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float f = 0.0f;
            if (i2 + i < fArr.length) {
                for (int i3 = 0; i3 < i; i3++) {
                    f += fArr[i2 + i3];
                }
                fArr2[i2] = f / i;
            } else {
                int length = fArr.length - i2;
                for (int i4 = 0; i4 < length; i4++) {
                    f += fArr[i2 + i4];
                }
                fArr2[i2] = f / length;
            }
        }
        return fArr2;
    }

    public static float[] smoth5(float[] fArr) {
        float[] fArr2 = new float[fArr.length];
        fArr2[fArr.length - 2] = fArr[fArr.length - 2];
        fArr2[fArr.length - 1] = fArr[fArr.length - 1];
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = f + f2 + fArr[2] + fArr[3] + fArr[4];
        fArr2[0] = fArr2[1];
        fArr2[1] = f2;
        for (int i = 2; i < fArr.length - 3; i++) {
            fArr2[i] = f3 / 5.0f;
            f3 = (f3 - fArr[i - 2]) + fArr[i + 3];
        }
        return fArr2;
    }

    public static void calculateFft(float[] fArr, byte[] bArr, int i) {
        if (fArr.length + i <= (bArr.length / 2) + 1) {
            for (int i2 = 0; i2 < fArr.length; i2++) {
                int i3 = (i + i2) * 2;
                fArr[i2] = (float) Math.hypot(bArr[i3], bArr[i3 + 1]);
            }
            return;
        }
        throw new IllegalArgumentException("calculateFft float array size must small than (fft.length /2 + 1)");
    }
}
