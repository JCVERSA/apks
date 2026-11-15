package com.bytedance.adsdk.ugeno.yoga;

public class Ym {
    public static long Sj(float f10, float f11) {
        return ((long) Float.floatToRawIntBits(f11)) | (((long) Float.floatToRawIntBits(f10)) << 32);
    }

    public static long Sj(int i10, int i11) {
        return Sj(i10, i11);
    }
}
