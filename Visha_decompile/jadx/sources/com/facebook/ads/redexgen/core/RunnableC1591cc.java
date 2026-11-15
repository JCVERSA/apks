package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class RunnableC1591cc implements Runnable {
    public static byte[] A01;
    public final C06163s A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{22, 41, 36, 37, 47, 16, 44, 33, 57, 34, 33, 35, 43, 5, 50, 50, 47, 50};
    }

    public RunnableC1591cc(C06163s c06163s) {
        this.A00 = c06163s;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0R(A00(0, 18, 81));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
