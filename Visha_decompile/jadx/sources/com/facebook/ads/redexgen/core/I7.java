package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class I7 extends AbstractRunnableC1322Vt {
    public static byte[] A02;
    public final C1538bl A00;
    public final C3Q A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-103, -52, -67, -67, -68, -55, -64, -59, -66, 119, -64, -59, -69, -68, -67, -64, -59, -64, -53, -68, -61, -48};
    }

    public I7(C1538bl c1538bl, C3Q c3q) {
        this.A00 = c1538bl;
        this.A01 = c3q;
    }

    @Override
    public final void A07() {
        if (this.A00.A0D.getState() != EnumC1705eU.A02 || this.A00.A0D.getCurrentPositionInMillis() != A00()) {
            return;
        }
        this.A00.A0I(A00(0, 22, 47));
    }
}
