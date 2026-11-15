package com.facebook.ads.redexgen.core;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class AX<V> implements InterfaceC1988jM<List<V>>, Serializable {
    public static byte[] A01;
    public static String[] A02 = {"e5wnLSIbQxkq8Zb8jKmA", "K5DmaQySCrjWvleFa", "LWuY7vQYlXU7vsjuD", "M7ok9ovwGeM", "5nYOTBMz755", "tdWE3UbGCkl2", "in1BIrIvXgLkxgASW", "Nc3XS6cKk9DYxfmxbznhVqbsdMI4LYY"};
    public final int A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            if (A02[0].length() != 20) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[3] = "LeP2zF5PzD6";
            strArr[4] = "FkYvCPAL8bA";
            bArrCopyOfRange[i4] = (byte) (i5 - 73);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        byte[] bArr = {10, 29, 21, 10, 8, 25, 10, 9, -5, 6, 17, 26, 10, 24, -11, 10, 23, -16, 10, 30};
        String[] strArr = A02;
        if (strArr[2].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[3] = "U6hTL0roTrM";
        strArr2[4] = "z8jhm3qQIoz";
        A01 = bArr;
    }

    static {
        A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AX != com.google.common.collect.MultimapBuilder$ArrayListSupplier<V> */
    public AX(int expectedValuesPerKey) {
        this.A00 = AbstractC2124ll.A00(expectedValuesPerKey, A00(0, 20, 92));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.AX != com.google.common.collect.MultimapBuilder$ArrayListSupplier<V> */
    @Override
    public final List<V> get() {
        return new ArrayList(this.A00);
    }
}
