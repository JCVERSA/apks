package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C2194mu implements C8J {
    public static byte[] A01;
    public static String[] A02 = {"", "W3zKx7uimPBnuqB79eRuk71Lq6Q9Tdtq", "pdw5IcOEDsyx", "PznYxCtiabQ1XXQUVp9BfEAYIGk6ZsUE", "E1k4hPJKfb0MvebzJOZYusmHHBWvORO7", "bmueFxdYYt0nqn8p", "GRfRtgnBgmJZB0Qq", "VS7ML1wDeymmTLeKFRcttz7uEm3bVRGQ"};
    public final C0Q A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A02;
            if (strArr[5].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A02[4] = "fuFs1gweK6T0kCx4bj1F2DHsk5QuVwMS";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{47, 27, 10, 7, 1, 78, 29, 7, 0, 5, 78, ByteCode.T_LONG, 28, 28, 1, 28, 32, 8, 9, 4, 12, 46, 2, 9, 8, 14, 44, 24, 9, 4, 2, Utf8.REPLACEMENT_BYTE, 8, 3, 9, 8, 31, 8, 31, 55, 54, ByteCode.T_LONG, 52, 61, 61, 40, 24, 25, 32, 22, 28, 18, 2, 7};
    }

    static {
        A01();
    }

    public C2194mu(C0Q c0q) {
        this.A00 = c0q;
    }

    @Override
    public final void ACV(Exception exc) {
        AnonymousClass44.A08(A00(16, 23, 101), A00(0, 16, 102), exc);
        this.A00.A0G.A0D(exc);
    }

    @Override
    public final void ACW(C8F c8f) {
        this.A00.A0G.A0B(c8f);
    }

    @Override
    public final void ACX(C8F c8f) {
        this.A00.A0G.A0C(c8f);
    }

    @Override
    public final void AEN() {
        C0Q.A05(this.A00);
        if (0 != 0) {
            C0Q.A05(this.A00);
            throw new NullPointerException(A00(46, 8, 127));
        }
    }

    @Override
    public final void AEO() {
        C0Q.A05(this.A00);
        if (0 != 0) {
            C0Q.A05(this.A00);
            throw new NullPointerException(A00(39, 7, 80));
        }
    }

    @Override
    public final void AEg(long j) {
        this.A00.A0G.A03(j);
    }

    @Override
    public final void AEh() {
        this.A00.A26();
    }

    @Override
    public final void AFF(boolean z) {
        this.A00.A0G.A0I(z);
    }

    @Override
    public final void AFZ(int i, long j, long j2) {
        this.A00.A0G.A01(i, j, j2);
    }
}
