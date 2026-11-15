package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public enum EnumC1666dr {
    A04,
    A03,
    A02;

    public static byte[] A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{123, 118, 121, 122, -108, -124, SocketData.CLAZZ_TYPE_FILE_BLOCK, -119, -108, -124, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -108, -123, SocketData.CLAZZ_TYPE_HEART_BEAT, 118, SocketData.CLAZZ_TYPE_FILE, -73, -68, -60, -63, -73, -80, -70, -77, SocketData.CLAZZ_TYPE_STRING, 126, -120, 126, 119, SocketData.CLAZZ_TYPE_HEART_BEAT, 122};
    }

    static {
        A01();
    }
}
