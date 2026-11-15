package com.facebook.ads.redexgen.core;

import android.app.Activity;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractC1361Xi {
    public static byte[] A00;
    public static String[] A01 = {"fNLd7n7EkFNgLvt4vtbAtkfYXAQTEPRW", "T28d5tP6PdXMoXHWEuFSx", "qUncBokoif621v1GQ7gcKknRgizXPQsv", "IkdBxGtQCWxg3d0UA", "tTLCQWoYBdse5ixamGS9HTw2k7WXO8kY", "MyXxcbJBNTQUhn8S7mcX9rM3djOk", "ymwmgwOSW636xClV84tW2WEHiZAMdx7v", "xCAHRx5Y4"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A01;
            if (strArr[7].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[0] = "dZQs1GEaNPWr5rijC2ubsciPbAft3PPF";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{15, 13, 22, 13, 26, 17, ByteCode.T_LONG};
    }

    static {
        A01();
    }

    public static void A02(Activity activity, int i, C1635dL c1635dL) {
        try {
            activity.setRequestedOrientation(i);
        } catch (IllegalStateException e) {
            c1635dL.A08().ABR(A00(0, 7, 51), AbstractC1248Sv.A0H, new C1249Sw(e));
        }
    }
}
