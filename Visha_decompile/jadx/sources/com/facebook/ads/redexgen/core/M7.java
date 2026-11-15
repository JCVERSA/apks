package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public abstract class M7 {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{9, 28, 19, 3, 16, 9, 18, 17, 36, 27, ByteCode.T_LONG, 30, 17, 16, 21, 30};
    }

    public static long A00(M8 m8) {
        return m8.A6Z(A02(0, 7, 111), -1L);
    }

    public static Uri A01(M8 m8) {
        String strA6b = m8.A6b(A02(7, 9, 119), null);
        if (strA6b == null) {
            return null;
        }
        return Uri.parse(strA6b);
    }
}
