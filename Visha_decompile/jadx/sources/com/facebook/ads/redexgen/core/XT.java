package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class XT implements ThreadFactory {
    public static byte[] A03;
    public final AtomicInteger A00 = new AtomicInteger(1);
    public final XU A01;
    public final String A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 7);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{121, 116, SocketData.CLAZZ_TYPE_HEART_BEAT, 109, 88, -90, 83, 86, 88, -105, -111, -123, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_SEND_PACKAGE, 126, SocketData.CLAZZ_TYPE_HEART_BEAT, -112, 124, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_CODE, -110, SocketData.CLAZZ_TYPE_STRING, -111, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_URI, 124, -112, -123, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_URI, -111, 124, -111, 126, -112, -120, 124, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -107, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_END_SOCKET, -110, -111, SocketData.CLAZZ_TYPE_CODE, SocketData.CLAZZ_TYPE_URI};
    }

    public XT(XU xu, String str) {
        this.A01 = xu;
        this.A02 = str;
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        T1.A00(A00(10, 35, 22));
        return new Thread(runnable, String.format(Locale.US, A00(0, 10, 44), this.A02, Integer.valueOf(this.A00.getAndIncrement())));
    }
}
