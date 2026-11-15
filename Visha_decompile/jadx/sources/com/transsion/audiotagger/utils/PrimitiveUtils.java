package com.transsion.audiotagger.utils;

public class PrimitiveUtils {
    public static int safeLongToInt(long j) {
        if (j >= -2147483648L && j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalArgumentException(j + " cannot be cast to int without changing its value.");
    }
}
