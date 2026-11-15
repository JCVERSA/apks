package com.facebook.ads.redexgen.core;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.Arrays;

public abstract class GQ {
    public static byte[] A04;
    public static String[] A05 = {"uP2VmRjmPrkQ", "gRGWgf4lLYF9Rif8PQPDNbGokb9BUMtV", "bSjOyzwe8Lqn79dPeHIi8kfJVgfNJaEZ", "7R1XMZQjg8S2TiXm1wE8kLqT1leJFKD3", "sD", "qKJRf3b", "Q40N8hoONMcQBFaHNU", "iAP6W7CwppN1UlUQVXHbR"};
    public GK A00;
    public final int A01;
    public final C2108lV A02;
    public final GP A03;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{7, 32, 56, 47, 34, 39, 42, 110, 45, 47, 61, 43};
    }

    static {
        A03();
    }

    public GQ(GL gl, GP gp, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.A03 = gp;
        this.A01 = i;
        this.A02 = new C2108lV(gl, j, j2, j3, j4, j5, j6);
    }

    private final int A00(InterfaceC2101lN interfaceC2101lN, long j, C0939Gt c0939Gt) {
        if (j != interfaceC2101lN.A8f()) {
            c0939Gt.A00 = j;
            return 1;
        }
        if (A05[5].length() != 7) {
            throw new RuntimeException();
        }
        A05[4] = "eb0wJDSKJb6zWnRAqReB9UTGfXv";
        return 0;
    }

    private final GK A01(long j) {
        return new GK(j, this.A02.A05(j), this.A02.A05, this.A02.A02, this.A02.A04, this.A02.A01, this.A02.A00);
    }

    private final void A04(boolean z, long j) {
        this.A00 = null;
        this.A03.AFA();
    }

    private final boolean A05(InterfaceC2101lN interfaceC2101lN, long j) throws IOException {
        long jA8f = j - interfaceC2101lN.A8f();
        if (jA8f >= 0 && jA8f <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            interfaceC2101lN.AJJ((int) jA8f);
            return true;
        }
        return false;
    }

    public final int A06(InterfaceC2101lN interfaceC2101lN, C0939Gt c0939Gt) throws IOException {
        while (true) {
            GK gk = (GK) C3M.A02(this.A00);
            long jA01 = gk.A01();
            long jA00 = gk.A00();
            long jA02 = gk.A02();
            if (jA00 - jA01 <= this.A01) {
                A04(false, jA01);
                String[] strArr = A05;
                if (strArr[3].charAt(1) != strArr[1].charAt(1)) {
                    throw new RuntimeException();
                }
                A05[5] = "cjf3Phs";
                return A00(interfaceC2101lN, jA01, c0939Gt);
            }
            if (!A05(interfaceC2101lN, jA02)) {
                return A00(interfaceC2101lN, jA02, c0939Gt);
            }
            interfaceC2101lN.AI1();
            GN gnAIC = this.A03.AIC(interfaceC2101lN, gk.A04());
            switch (gnAIC.A00) {
                case -3:
                    A04(false, jA02);
                    return A00(interfaceC2101lN, jA02, c0939Gt);
                case -2:
                    gk.A0D(gnAIC.A02, gnAIC.A01);
                    break;
                case -1:
                    gk.A0C(gnAIC.A02, gnAIC.A01);
                    break;
                case 0:
                    A05(interfaceC2101lN, gnAIC.A01);
                    long floorPosition = gnAIC.A01;
                    A04(true, floorPosition);
                    return A00(interfaceC2101lN, gnAIC.A01, c0939Gt);
                default:
                    throw new IllegalStateException(A02(0, 12, 109));
            }
        }
    }

    public final C2108lV A07() {
        return this.A02;
    }

    public final void A08(long j) {
        if (this.A00 != null && this.A00.A03() == j) {
            return;
        }
        this.A00 = A01(j);
    }

    public final boolean A09() {
        return this.A00 != null;
    }
}
