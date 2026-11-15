package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;

public class AnonymousClass54 extends DV {
    public static byte[] A01;
    public final C1538bl A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{19, 4, 4, 25, 4};
    }

    public AnonymousClass54(C1538bl c1538bl) {
        this.A00 = c1538bl;
    }

    @Override
    public final void A03(DW dw) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1536bj(this));
        this.A00.A0B.AFh(A00(0, 5, 126), this.A00.A03());
    }
}
