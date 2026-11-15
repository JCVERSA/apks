package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public class C1923iF extends AbstractRunnableC1322Vt {
    public static byte[] A01;
    public final C1922iE A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-107, SocketData.CLAZZ_TYPE_CODE, -95, SocketData.CLAZZ_TYPE_CODE, -98, SocketData.CLAZZ_TYPE_FILE, -99, -108, -101, -97, 101};
    }

    public C1923iF(C1922iE c1922iE) {
        this.A00 = c1922iE;
    }

    @Override
    public final void A07() {
        this.A00.A03.A0F().AKB();
        this.A00.A05.loadUrl(A00(0, 11, 29) + this.A00.A00.A03());
    }
}
