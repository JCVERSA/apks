package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public enum Z6 {
    A03,
    A02;

    public static byte[] A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{13, 1, 2, 2, 15, 30, 29, ByteCode.T_LONG, 10, 45, 48, 56, 41, 38, 44, 45, 44};
    }

    static {
        A01();
    }
}
