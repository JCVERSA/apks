package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C1157Ph extends AbstractRunnableC1322Vt {
    public static byte[] A01;
    public final VU A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-81, -78, -90, -92, -81, -94, -73, -85, -75, -78, -73, -73, -81, -88};
    }

    public C1157Ph(VU vu) {
        this.A00 = vu;
    }

    @Override
    public final void A07() {
        this.A00.A05.A08().A9v(A00(0, 14, 26));
    }
}
