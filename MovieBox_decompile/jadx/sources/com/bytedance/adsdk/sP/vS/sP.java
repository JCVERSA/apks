package com.bytedance.adsdk.sP.vS;

public class sP {
    private static float Sj(float f10) {
        return f10 <= 0.0031308f ? f10 * 12.92f : (float) ((Math.pow(f10, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    private static float sP(float f10) {
        return f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static int Sj(float f10, int i10, int i11) {
        if (i10 == i11) {
            return i10;
        }
        float f11 = ((i10 >> 24) & 255) / 255.0f;
        float fSP = sP(((i10 >> 16) & 255) / 255.0f);
        float fSP2 = sP(((i10 >> 8) & 255) / 255.0f);
        float fSP3 = sP((i10 & 255) / 255.0f);
        float fSP4 = sP(((i11 >> 16) & 255) / 255.0f);
        float f12 = f11 + (((((i11 >> 24) & 255) / 255.0f) - f11) * f10);
        float fSP5 = fSP2 + ((sP(((i11 >> 8) & 255) / 255.0f) - fSP2) * f10);
        float fSP6 = fSP3 + (f10 * (sP((i11 & 255) / 255.0f) - fSP3));
        return (Math.round(Sj(fSP + ((fSP4 - fSP) * f10)) * 255.0f) << 16) | (Math.round(f12 * 255.0f) << 24) | (Math.round(Sj(fSP5) * 255.0f) << 8) | Math.round(Sj(fSP6) * 255.0f);
    }
}
