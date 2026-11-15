package com.facebook.ads.redexgen.core;

import androidx.media3.common.PlaybackException;
import java.util.Arrays;

public class C1805g8 implements InterfaceC1158Pi {
    public static byte[] A01;
    public final C06826g A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_SKIP_LIMIT_REACHED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-10, 0, -9};
    }

    public C1805g8(C06826g c06826g) {
        this.A00 = c06826g;
    }

    private final void A02(C1159Pj c1159Pj) {
        throw new NullPointerException(A00(0, 3, 40));
    }

    @Override
    public final void AD2(C1159Pj c1159Pj) {
        A02(c1159Pj);
        throw null;
    }
}
