package com.facebook.ads.redexgen.core;

import com.google.common.primitives.ElementTypesAreNonnullByDefault;

@ElementTypesAreNonnullByDefault
public abstract class AbstractC2368q7 {
    public static int A00(long value) {
        return (int) ((value >>> 32) ^ value);
    }

    public static int A01(long a, long b) {
        if (a < b) {
            return -1;
        }
        return a > b ? 1 : 0;
    }
}
