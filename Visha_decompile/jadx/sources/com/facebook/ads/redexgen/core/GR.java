package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import java.util.Arrays;

public abstract class GR {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-65, -31, -35, -47, -16, -27, -24, -36, -12, -14, -7, -7, -14, -9, -16, -87, -5, -18, -10, -22, -14, -9, -19, -18, -5, -87, -8, -17, -87, -10, -22, -11, -17, -8, -5, -10, -18, -19, -87, -36, -50, -46, -87, -41, -54, -43, -87, -2, -9, -14, -3, -73};
    }

    public static int A00(C4J c4j) {
        int i = 0;
        while (value != 0) {
            int b = c4j.A0I();
            i += b;
            if (b != 255) {
                return i;
            }
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001d  */
    public static void A03(long j, C4J c4j, H1[] h1Arr) {
        while (true) {
            if (c4j.A07() > 1) {
                int iA00 = A00(c4j);
                int iA01 = A00(c4j);
                int iA09 = c4j.A09() + iA01;
                if (iA01 != -1) {
                    int payloadType = c4j.A07();
                    if (iA01 > payloadType) {
                        AnonymousClass44.A07(A01(0, 7, 3), A01(7, 45, 16));
                        iA09 = c4j.A0A();
                    } else if (iA00 == 4 && iA01 >= 8) {
                        int userIdentifier = c4j.A0I();
                        int providerCode = c4j.A0M();
                        int countryCode = 0;
                        if (providerCode == 49) {
                            countryCode = c4j.A0C();
                        }
                        int iA0I = c4j.A0I();
                        if (providerCode == 47) {
                            c4j.A0g(1);
                        }
                        int i = (userIdentifier == 181 && (providerCode == 49 || providerCode == 47) && iA0I == 3) ? 1 : 0;
                        if (providerCode == 49) {
                            int userDataTypeCode = countryCode != 1195456820 ? 0 : 1;
                            i &= userDataTypeCode;
                        }
                        if (i != 0) {
                            A04(j, c4j, h1Arr);
                        }
                    }
                } else {
                    AnonymousClass44.A07(A01(0, 7, 3), A01(7, 45, 16));
                    iA09 = c4j.A0A();
                }
                c4j.A0f(iA09);
            } else {
                return;
            }
        }
    }

    public static void A04(long j, C4J c4j, H1[] h1Arr) {
        int firstByte = c4j.A0I();
        if (!((firstByte & 64) != 0)) {
            return;
        }
        c4j.A0g(1);
        int i = (firstByte & 31) * 3;
        int iA09 = c4j.A09();
        for (H1 h1 : h1Arr) {
            c4j.A0f(iA09);
            h1.AI7(c4j, i);
            if (j != C.TIME_UNSET) {
                h1.AIA(j, 1, i, 0, null);
            }
        }
    }
}
