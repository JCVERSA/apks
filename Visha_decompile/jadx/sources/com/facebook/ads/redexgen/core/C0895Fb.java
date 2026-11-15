package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C0895Fb extends AbstractRunnableC1322Vt {
    public static byte[] A01;
    public final C06153r A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-67, -48, -53, -52, -42, -121, -34, -56, -38, -121, -43, -52, -35, -52, -39, -121, -41, -39, -52, -41, -56, -39, -52, -53};
    }

    public C0895Fb(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void A07() {
        if (!this.A00.A0E) {
            this.A00.A0R(A00(0, 24, 8));
        }
    }
}
