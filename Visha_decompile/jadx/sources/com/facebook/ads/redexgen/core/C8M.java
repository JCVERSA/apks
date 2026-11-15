package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C8M extends Exception {
    public static byte[] A03;
    public final int A00;
    public final C2312or A01;
    public final boolean A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-26, 26, 9, 14, 20, -7, 23, 6, 8, 16, -59, 28, 23, 14, 25, 10, -59, ByteCode.T_LONG, 6, 14, 17, 10, 9, -33, -59};
    }

    public C8M(int i, C2312or c2312or, boolean z) {
        super(A00(0, 25, 91) + i);
        this.A02 = z;
        this.A00 = i;
        this.A01 = c2312or;
    }
}
