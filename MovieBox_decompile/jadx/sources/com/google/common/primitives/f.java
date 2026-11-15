package com.google.common.primitives;

import com.google.common.base.m;

public abstract class f {
    public static byte a(long j10) {
        m.h((j10 >> 8) == 0, "out of range: %s", j10);
        return (byte) j10;
    }

    public static int b(byte b10, byte b11) {
        return c(b10) - c(b11);
    }

    public static int c(byte b10) {
        return b10 & 255;
    }
}
