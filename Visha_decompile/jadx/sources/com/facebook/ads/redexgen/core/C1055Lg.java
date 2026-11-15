package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C1055Lg implements InterfaceC1331Wc {
    public static byte[] A01;
    public final C1051Lc A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{69, 81, 80, 75, 71, 72, 77, 71, 79};
    }

    public C1055Lg(C1051Lc c1051Lc) {
        this.A00 = c1051Lc;
    }

    @Override
    public final void ACp() {
        if (!this.A00.A0C && !this.A00.A0B) {
            this.A00.A0U(false, A00(0, 9, 80));
        }
    }

    @Override
    public final void AEn(float f) {
    }
}
