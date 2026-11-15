package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public enum EnumC1940iW {
    A05,
    A04,
    A02,
    A03;

    public static byte[] A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-121, -110, -111, -120, 127, 122, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -123, 126, 125, -109, -108, -103, -92, -105, SocketData.CLAZZ_TYPE_FILE_BLOCK, -122, -119, -98, -43, -56, -60, -57, -36};
    }

    static {
        A01();
    }
}
