package com.google.common.math;

import com.google.common.base.m;

abstract class c {
    static double a(double d10) {
        m.d(!Double.isNaN(d10));
        return Math.max(d10, 0.0d);
    }

    static long b(double d10) {
        m.e(c(d10), "not a normal value");
        int exponent = Math.getExponent(d10);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d10) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    static boolean c(double d10) {
        return Math.getExponent(d10) <= 1023;
    }

    static boolean d(double d10) {
        return Math.getExponent(d10) >= -1022;
    }

    static double e(double d10) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d10) & 4503599627370495L) | 4607182418800017408L);
    }
}
