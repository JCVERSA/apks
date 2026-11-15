package com.facebook.ads.redexgen.core;

import android.os.PowerManager;
import android.util.Log;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public final class C1359Xg {
    public static byte[] A00;
    public static String[] A01 = {"CRKlMdJj7sWkVQXvhxP2gtYMKrwrdBdz", "MDVslC7yGiRJk7iB8DE8e8h4fEVrC5ER", "lH08WA", "RxIchMFZh", "vNyd6Jid8bvsA1cw15Ve5Ic9LBA7HcUI", "txgfdNfKSs8Co5f2ObGoVq", "d8ndlqqx7tIKNJdyWXTDq8r8sQB5dgXc", "5RbatCjsfF363SonahZsted9lIdQCMHb"};
    public static final String A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A01;
            if (strArr[4].charAt(3) != strArr[6].charAt(3)) {
                throw new RuntimeException();
            }
            A01[2] = "R3kMyn";
            bArrCopyOfRange[i4] = (byte) (i5 - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{109, -96, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_ERROR_CODE, -104, -100, -111, -105, -106, 72, -111, -106, 72, -101, SocketData.CLAZZ_TYPE_STRING, -102, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, -106, 72, -111, -106, -100, SocketData.CLAZZ_TYPE_ERROR_CODE, -102, -119, SocketData.CLAZZ_TYPE_STRING, -100, -111, -98, SocketData.CLAZZ_TYPE_ERROR_CODE, 72, SocketData.CLAZZ_TYPE_STRING, -112, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_STRING, -109, 84, 72, -119, -101, -101, -99, -107, -111, -106, SocketData.CLAZZ_TYPE_URI, 72, -111, -106, -100, SocketData.CLAZZ_TYPE_ERROR_CODE, -102, -119, SocketData.CLAZZ_TYPE_STRING, -100, -111, -98, SocketData.CLAZZ_TYPE_ERROR_CODE, 86, -33, -34, -26, -44, -31, -69, -78, -68, -76, -62};
    }

    static {
        A01();
        A02 = C1359Xg.class.getSimpleName();
    }

    public static boolean A02(C1635dL c1635dL) {
        return A03(c1635dL) && C1360Xh.A03(c1635dL);
    }

    public static boolean A03(C1635dL c1635dL) {
        if (c1635dL == null) {
            return true;
        }
        try {
            return ((PowerManager) c1635dL.getSystemService(A00(60, 5, 91))).isInteractive();
        } catch (Exception e) {
            Log.e(A02, A00(0, 60, 20), e);
            c1635dL.A08().AAy(A00(65, 5, 53), AbstractC1248Sv.A2S, new C1249Sw(e));
            return true;
        }
    }
}
