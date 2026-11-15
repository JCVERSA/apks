package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C07047c extends AbstractC1972j4<LF> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-56, -49, -58, -58};
    }

    public C07047c(String str) {
        super(str);
    }

    @Override
    public final LN A04(LF lf) {
        return new LN(this, lf == null ? A00(0, 4, 46) : A00(0, 0, 18) + lf.A03());
    }
}
