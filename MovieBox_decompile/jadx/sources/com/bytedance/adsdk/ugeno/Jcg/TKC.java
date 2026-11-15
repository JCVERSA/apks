package com.bytedance.adsdk.ugeno.Jcg;

public final class TKC {
    public static float Sj(String str, float f10) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f10;
        }
    }

    public static int Sj(String str, int i10) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static long Sj(String str, long j10) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static double Sj(String str, double d10) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d10;
        }
    }

    public static boolean Sj(String str, boolean z10) {
        try {
            return Boolean.parseBoolean(str);
        } catch (NumberFormatException unused) {
            return z10;
        }
    }
}
