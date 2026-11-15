package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

public final class C07449d implements InterfaceC2247nl {
    public static byte[] A00;
    public static final InterfaceC06464w A01;
    public static final C07449d A02;

    public static C07449d A00() {
        return new C07449d();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{23, 43, 38, 36, 34, 47, 40, 43, 35, 34, 53, 3, 38, 51, 38, 20, 40, 50, 53, 36, 34, 103, 36, 38, 41, 41, 40, 51, 103, 37, 34, 103, 40, 55, 34, 41, 34, 35};
    }

    @Override
    public final Map A8l() {
        return AbstractC06454v.A00(this);
    }

    static {
        A02();
        A02 = new C07449d();
        A01 = new InterfaceC06464w() {
            @Override
            public final InterfaceC2247nl A5A() {
                return C07449d.A00();
            }
        };
    }

    @Override
    public final void A3v(C5H c5h) {
    }

    @Override
    public final Uri A9H() {
        return null;
    }

    @Override
    public final long AFy(AnonymousClass56 anonymousClass56) throws IOException {
        throw new IOException(A01(0, 38, 57));
    }

    @Override
    public final void close() {
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
