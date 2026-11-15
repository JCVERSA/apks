package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C07027a extends AbstractC1972j4<LT> {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{83, 90, 81, 81};
    }

    public C07027a(String str) {
        super(str);
    }

    @Override
    public final LN A04(LT lt) {
        return new LN(this, lt == null ? A00(0, 4, 114) : lt.A03());
    }
}
