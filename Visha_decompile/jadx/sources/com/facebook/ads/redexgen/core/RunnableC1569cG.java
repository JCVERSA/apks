package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class RunnableC1569cG implements Runnable {
    public static byte[] A01;
    public final C06254b A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{78, 113, 124, 125, 119, 72, 116, 121, 97, 122, 121, 123, 115, 93, 106, 106, 119, 106};
    }

    public RunnableC1569cG(C06254b c06254b) {
        this.A00 = c06254b;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0Z.AFg(A00(0, 18, 75));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
