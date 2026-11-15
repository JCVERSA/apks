package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public final class S0 {
    public static S1 A00;
    public static boolean A01;
    public static byte[] A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-91, -88, -79, -90, -85, -80, -92, -75, -82};
    }

    static {
        A02();
        A01 = false;
        A00 = null;
    }

    public static void A01() {
        synchronized (S0.class) {
            if (A00 == null) {
                return;
            }
            C1249Sw c1249Sw = new C1249Sw(A00.AHr());
            c1249Sw.A05(1);
            C1609cu c1609cuA00 = SP.A00();
            if (c1609cuA00 != null) {
                c1609cuA00.A08().AAy(A00(0, 9, 49), 3401, c1249Sw);
            }
            A00.reset();
        }
    }

    public static void A03(long j) {
        if (j > 0) {
            A00 = new C1671dw();
            new S2(j);
        }
    }
}
