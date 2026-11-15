package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Arrays;

public abstract class X0 {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-33, -41, -37, -39, -41, -39};
    }

    public static Bundle A00(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(AbstractC1122Nw.A01, A01(0, 6, 102));
        bundle.putString(AbstractC1122Nw.A00, str);
        return bundle;
    }
}
