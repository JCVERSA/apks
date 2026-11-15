package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

public class C1663dn extends AbstractRunnableC1322Vt {
    public static byte[] A02;
    public final C1662dm A00;
    public final AtomicBoolean A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{14, 44, 46, 51, 48, -21, 49, 44, 52, 55, -7, -110, -80, -78, -73, -76, 111, -62, -60, -78, -78, -76, -62, -62, 125};
    }

    public C1663dn(C1662dm c1662dm, AtomicBoolean atomicBoolean) {
        this.A00 = c1662dm;
        this.A01 = atomicBoolean;
    }

    @Override
    public final void A07() {
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(UZ.A0H);
                SI.A02(this.A00.A02.A04, this.A00.A01, SI.A00, A00(11, 14, 1), this.A00.A02.A00);
                this.A00.A02.A0U();
                this.A00.A00.ACq();
                return;
            }
            this.A00.A02.A0I(UZ.A0G);
            SI.A02(this.A00.A02.A04, this.A00.A01, SI.A04, A00(0, 11, 125), this.A00.A02.A00);
            this.A00.A02.A0V();
            this.A00.A00.ACh();
        }
    }
}
