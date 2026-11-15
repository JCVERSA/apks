package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;

public abstract class AbstractC2290oU implements C1S {
    public static byte[] A00;
    public static String[] A01 = {"aC8uc30vckBh0ldJ8CsDkWWGmQgl7sOm", "2", "dPCbCdxH5PRV4edn", "QHj", "dDf", "KHWYQA", "nwDl9CeJStZlhkBKgBcw2akg3aHE6X2p", "I5"};
    public static final String A02;
    public static final C1R<AbstractC2290oU> A03;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 9);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{SocketData.CLAZZ_TYPE_SEND_PACKAGE, -101, -104, -101, -100, -92, -101, 77, 127, SocketData.CLAZZ_TYPE_FILE, -95, -106, -101, -108, SocketData.CLAZZ_TYPE_HEART_BEAT, -90, -99, -110, 103, 77};
    }

    static {
        A07();
        A02 = AbstractC06244a.A0h(0);
        A03 = new C1R() {
            @Override
            public final C1S A6X(Bundle bundle) {
                return AbstractC2290oU.A04(bundle);
            }
        };
    }

    public static AbstractC2290oU A04(Bundle bundle) {
        int i = bundle.getInt(A02, -1);
        switch (i) {
            case 0:
                return (AbstractC2290oU) C07599s.A02.A6X(bundle);
            case 1:
                AbstractC2290oU abstractC2290oU = (AbstractC2290oU) C07579q.A02.A6X(bundle);
                if (A01[6].charAt(2) != 'F') {
                    String[] strArr = A01;
                    strArr[7] = "RK";
                    strArr[1] = "0";
                    return abstractC2290oU;
                }
                break;
            case 2:
                return (AbstractC2290oU) C07569p.A04.A6X(bundle);
            case 3:
                C1S c1sA6X = C07559o.A02.A6X(bundle);
                if (A01[6].charAt(2) != 'F') {
                    String[] strArr2 = A01;
                    strArr2[7] = "Vr";
                    strArr2[1] = "2";
                    return (AbstractC2290oU) c1sA6X;
                }
                break;
            default:
                throw new IllegalArgumentException(A06(0, 20, 36) + i);
        }
        throw new RuntimeException();
    }
}
