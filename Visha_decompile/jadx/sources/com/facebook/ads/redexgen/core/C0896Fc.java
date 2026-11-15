package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public class C0896Fc extends AbstractRunnableC1322Vt {
    public static byte[] A01;
    public static String[] A02 = {"zQTxaAZtyj5Zf7xpyBa5Wo13", "ZyRPoqiC9PInhvt4VYdLIOd5Fjjwld3Q", "AJVcAlxtfo1o3uDwHkILc2qtWBcw5I", "qm4l90vWWtQXhhB5Cv7", "msnWA3qGYryppWjZvi7PZr4M3Bb415RH", "kQT0oRvSr6py", "zmROIVOKOovaIXaapuTgFe6PU", "TFR8Ke0ijybG7ZAZ7LbnVmkovmXx0N"};
    public final C06153r A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{SocketData.CLAZZ_TYPE_CODE, -97, -102, -101, -91, 86, -92, -101, -84, -101, -88, 86, -87, -86, -105, -88, -86, -101, -102, 86, -90, -94, -105, -81, -97, -92, -99};
    }

    static {
        A01();
    }

    public C0896Fc(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void A07() {
        if (!this.A00.A0F) {
            C06153r c06153r = this.A00;
            if (A02[1].charAt(3) != 'P') {
                throw new RuntimeException();
            }
            A02[3] = "tIcfuB5su4wQORzkX2J";
            c06153r.A0R(A00(0, 27, 32));
        }
    }
}
