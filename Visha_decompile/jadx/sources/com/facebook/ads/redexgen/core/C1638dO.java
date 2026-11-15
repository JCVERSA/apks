package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public final class C1638dO {
    public static byte[] A09;
    public final E1 A02;
    public final C1864h8 A05;
    public final String A06;
    public final Map<String, String> A07;
    public final boolean A08;
    public final DU A04 = new DU() {
        @Override
        public final void A03(C3Z c3z) {
            C1865h9 c1865h9 = new C1865h9(this.A00.A06, c3z.A03(), c3z.A01(), c3z.A02());
            if (c3z.A00() >= 0.05d) {
                c1865h9.A06(c3z.A01());
            }
            C1638dO.A00(this.A00);
            this.A00.A05.A04(c1865h9);
        }
    };
    public final DX A03 = new DX() {
        public static String[] A01 = {"6BCUDqBTxMKsyDySTDfAgToNrOyTrTD7", "Djf66yrzqq1vnadUmdmWvJcbyzxtAl6k", "tEWjotQxZjNCyKq2vbPJS9KAzb4A3hxJ", "kfWCXMrmmpdmvn7", "tPgONuxPqcgn4e0Z", "11TiM4f61A8Ladhbi7mmvNycAncH9GAZ", "vRuUugy6JKGdIehMZ73GXeup75bhp5n7", "ksJD2q6S6mSNkSfcUAtwhZVbKKRTJPP1"};

        @Override
        public final void A03(C06013d c06013d) {
            if (this.A00.A08) {
                C1638dO c1638dO = this.A00;
                String[] strArr = A01;
                if (strArr[0].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                A01[3] = "Cld5vqCsdzETAPzY9HB959";
                c1638dO.A07();
            }
        }
    };
    public int A01 = 0;
    public int A00 = 0;

    static {
        A04();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{SocketData.CLAZZ_TYPE_CODE, -99, SocketData.CLAZZ_TYPE_CODE, -107, -101, -122, -112, -107, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_CODE, -97, 3, 15, -2, 10, 2, -4, 0, 12, 18, ByteCode.T_LONG, 17, -90, -78, -95, -83, -91, -77};
    }

    public C1638dO(E1 e1, String str, boolean z, Map<String, String> map) {
        this.A06 = str;
        this.A02 = e1;
        this.A07 = map;
        this.A08 = z;
        this.A05 = new C1864h8(this.A06);
        this.A02.getEventBus().A03(this.A04, this.A03);
    }

    public static int A00(C1638dO c1638dO) {
        int i = c1638dO.A01;
        c1638dO.A01 = i + 1;
        return i;
    }

    public final Map<String, String> A06() {
        String strA01 = C1864h8.A01(this.A05.A03());
        HashMap map = new HashMap();
        if (this.A07 != null) {
            map.putAll(this.A07);
        }
        if (strA01 == null) {
            strA01 = A02(0, 0, 25);
        }
        map.put(A02(22, 6, 33), strA01);
        map.put(A02(11, 11, 126), String.valueOf(this.A01));
        int i = this.A00 + 1;
        this.A00 = i;
        map.put(A02(0, 11, 8), String.valueOf(i));
        return map;
    }

    public final void A07() {
        this.A02.getEventBus().A04(this.A04, this.A03);
    }
}
