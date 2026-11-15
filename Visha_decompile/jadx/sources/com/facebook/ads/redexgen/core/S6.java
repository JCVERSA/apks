package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

public final class S6 {
    public static byte[] A03;
    public static final AtomicBoolean A04;
    public C1609cu A00;
    public String A01;
    public final C1352Wz A02 = new C1352Wz(300000000000L, new C1667ds(this));

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A03 = new byte[]{-56, -43, -56, -45, -42, -50, -86, -95, -80, -77, -85, -82, -89, -69, -80, -75, -84, -95, -64, -78, -64, -64, -74, -68, -69, -52, -63, -74, -70, -78};
    }

    static {
        A04();
        A04 = new AtomicBoolean(false);
    }

    public static TV A00(C1609cu c1609cu) {
        if (U7.A1A(c1609cu)) {
            return TW.A01(A01(0, 6, 55), A01(18, 12, 29), A01(6, 12, 12));
        }
        return TW.A00();
    }

    public void A02() {
        C1609cu c1609cu;
        synchronized (this) {
            c1609cu = this.A00;
        }
        if (c1609cu == null) {
            return;
        }
        String strA05 = TY.A00().A01(c1609cu, true).A05(A00(c1609cu));
        synchronized (this) {
            this.A01 = strA05;
        }
    }

    public static void A03() {
        A04.set(true);
    }

    public final synchronized String A06(C1609cu c1609cu) {
        this.A00 = c1609cu;
        this.A00.A08().ABq();
        this.A00.A04().ACe(c1609cu);
        if (this.A00.A07().AJC() || ((A04.get() && U7.A1w(this.A00)) || this.A01 == null)) {
            A02();
            this.A02.A04().A03();
            A04.set(false);
        }
        this.A02.A06();
        return this.A01;
    }

    public final void A07() {
        this.A02.A05();
    }
}
