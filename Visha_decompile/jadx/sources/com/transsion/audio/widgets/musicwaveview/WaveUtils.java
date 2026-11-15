package com.transsion.audio.widgets.musicwaveview;

public class WaveUtils {
    public static final float[] aCount20 = {-50.394f, -34.539f, -27.048f, -22.397f, -19.144f, -16.708f, -14.797f, -13.244f, -11.949f, -10.847f, -9.892f, -9.056f, -8.314f, -7.651f, -7.054f, -6.513f, -6.02f, -5.569f, -5.155f, -4.773f, -4.421f, -4.095f, -3.792f, -3.51f, -3.247f, -3.002f, -2.773f, -2.559f, -2.358f, -2.17f, -1.992f, -1.826f, -1.669f, -1.522f, -1.383f, -1.251f, -1.127f, -1.01f, -0.899f, -0.794f, -0.695f, -0.601f, -0.511f, -0.426f, -0.346f, -0.269f, -0.197f, -0.128f, -0.062f};

    public static float ACount(float f) {
        float f2 = 1.48698928E8f * f * f * f * f;
        float f3 = f * f;
        return (float) ((Math.log10(((double) f2) / (((((double) (424.36002f + f3)) * Math.sqrt(11599.289f + f3)) * Math.sqrt(544496.44f + f3)) * ((double) (f3 + 1.48698928E8f)))) * 20.0d) - ((double) (-2.0f)));
    }

    public static void calculateA(float[] fArr, float f) {
        for (int i = 0; i < fArr.length; i++) {
            float fACount = (float) (((double) fArr[i]) + ((double) ACount(i * f)));
            fArr[i] = fACount;
            if (fACount < 0.0f) {
                fACount = 0.0f;
            }
            fArr[i] = fACount;
        }
    }

    public static void calculateDB(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            if (Float.compare(fArr[i], 1.1f) == -1) {
                fArr[i] = 1.0f;
            } else {
                fArr[i] = (float) (Math.log10(fArr[i]) * 20.0d);
            }
        }
    }

    public static float[] getArray(int i, float f) {
        float[] fArr = new float[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            fArr[i2] = ACount(i3 * f);
            i2 = i3;
        }
        return fArr;
    }

    public static void calculateA(float[] fArr, float f, int i) {
        for (int i2 = 0; i2 < fArr.length; i2++) {
            float fACount = (float) (((double) fArr[i2]) + ((double) ACount((i2 + i) * f)));
            fArr[i2] = fACount;
            if (fACount < 0.0f) {
                fACount = 0.0f;
            }
            fArr[i2] = fACount;
        }
    }
}
