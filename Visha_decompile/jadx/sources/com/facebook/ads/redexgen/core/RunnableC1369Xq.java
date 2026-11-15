package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public class RunnableC1369Xq implements Runnable {
    public static byte[] A01;
    public final C6H A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-106, -108, -122, -109, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_CONNECT_CHECK, -106, -121, -121, -122, -109, -122, -123, SocketData.CLAZZ_TYPE_END_SOCKET, -124, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_FILE_BLOCK, -124, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -121, -107, -122, -109, SocketData.CLAZZ_TYPE_END_SOCKET, -123, -122, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -102};
    }

    public RunnableC1369Xq(C6H c6h) {
        this.A00 = c6h;
    }

    @Override
    public final void run() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0H(A00(0, 31, 20));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
