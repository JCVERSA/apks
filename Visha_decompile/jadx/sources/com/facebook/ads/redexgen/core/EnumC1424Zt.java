package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public enum EnumC1424Zt {
    A05(0),
    A04(1),
    A03(2);

    public static byte[] A01;
    public int A00;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{78, 67, 76, 70, 81, 65, 67, 82, 71, 56, 39, 58, 60, 58, 41, 33, 60, 22, 13, 16, 19, 6, 0, 10, 5, 10, 6, 7};
    }

    static {
        A02();
    }

    EnumC1424Zt(int i) {
        this.A00 = i;
    }

    public static EnumC1424Zt A00(int i) {
        for (EnumC1424Zt enumC1424Zt : values()) {
            if (enumC1424Zt.A00 == i) {
                return enumC1424Zt;
            }
        }
        return A04;
    }

    public final int A04() {
        return this.A00;
    }
}
