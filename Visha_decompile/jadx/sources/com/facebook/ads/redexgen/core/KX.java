package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.List;

public final class KX {
    public static byte[] A02;
    public final List<C2312or> A00;
    public final H1[] A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{119, -100, -92, SocketData.CLAZZ_TYPE_URI, -102, -105, -110, 78, -111, -102, -99, -95, -109, -110, 78, -111, SocketData.CLAZZ_TYPE_URI, -98, -94, -105, -99, -100, 78, -101, -105, -101, -109, 78, -94, -89, -98, -109, 78, -98, -96, -99, -92, -105, -110, -109, -110, 104, 78, -123, -108, -108, -112, SocketData.CLAZZ_TYPE_ERROR_CODE, -121, -123, -104, SocketData.CLAZZ_TYPE_ERROR_CODE, -109, -110, 83, -121, -119, -123, 81, 90, 84, 92, -49, -34, -34, -38, -41, -47, -49, -30, -41, -35, -36, -99, -47, -45, -49, -101, -91, -98, -90};
    }

    public KX(List<C2312or> list) {
        this.A00 = list;
        this.A01 = new H1[list.size()];
    }

    public final void A02(long j, C4J c4j) {
        GR.A03(j, c4j, this.A01);
    }

    public final void A03(GY gy, C1027Ke c1027Ke) {
        for (int i = 0; i < i; i++) {
            c1027Ke.A05();
            H1 h1AJh = gy.AJh(c1027Ke.A03(), 3);
            C2312or c2312or = this.A00.get(i);
            String str = c2312or.A0W;
            C3M.A09(A00(43, 19, 7).equals(str) || A00(62, 19, 81).equals(str), A00(0, 43, 17) + str);
            C2D c2dA11 = new C2D().A0y(c2312or.A0T != null ? c2312or.A0T : c1027Ke.A04()).A11(str);
            int i2 = c2312or.A0H;
            C2D c2dA10 = c2dA11.A0n(i2).A10(c2312or.A0V);
            int i3 = c2312or.A03;
            h1AJh.A6W(c2dA10.A0Z(i3).A12(c2312or.A0X).A14());
            this.A01[i] = h1AJh;
        }
    }
}
