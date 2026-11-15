package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import okio.Utf8;

public class TA extends MQ {
    public static byte[] A01;
    public final C1178Qc A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{95, 112, 101, 120, 103, 116, 49, 112, 117, 98, 49, 124, 112, 127, 112, 118, 116, 99, 49, 101, 121, 116, 120, 99, 49, 126, 102, 127, 49, 120, 124, 97, 99, 116, 98, 98, 120, 126, 127, 98, Utf8.REPLACEMENT_BYTE};
    }

    public TA(C1178Qc c1178Qc) {
        this.A00 = c1178Qc;
    }

    @Override
    public final void A0B(C1931iN c1931iN) {
        this.A00.A1W(c1931iN);
    }

    @Override
    public final void A0C() {
        if (this.A00.A0G != null) {
            this.A00.A0G.ACD();
        }
    }

    @Override
    public final void A0D() {
        throw new IllegalStateException(A00(0, 41, 15));
    }

    @Override
    public final void A0F(MP mp) {
        if (this.A00.A0A != null) {
            this.A00.A0A.A0M();
        }
    }

    @Override
    public final void A0G(V1 v1) {
        this.A00.A12().A0F().A3F(XG.A01(this.A00.A00), v1.A03().getErrorCode(), v1.A04());
        if (this.A00.A0G != null) {
            this.A00.A0G.ADB(v1);
        }
    }
}
