package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.List;

public final class C1030Kh {
    public static byte[] A02;
    public static String[] A03 = {"5V45xVrzlJXesqnrbjrZeT76qkPwv", "706Txtts1K7q5FoHp33PEv9HaNMSsjAK", "qupHUySH2p9zJgxISfihn0myWA92wmd9", "5DvGIEuDVuIxxSW2dLmZtZYg2a6kN8VU", "n2fidlshYBQzN55WQs4Vi6", "kTscsm2f8c9DflsdA4bvXVbGUagx", "", "mbeoGjxKtAefmgmFA563kx"};
    public final List<C2312or> A00;
    public final H1[] A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[5].length() == 31) {
                throw new RuntimeException();
            }
            A03[0] = "BUpOOmvQBkZMcHt4Z";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 6);
            i4++;
        }
    }

    public static void A01() {
        A02 = new byte[]{SocketData.CLAZZ_TYPE_FILE, -77, -69, -90, -79, -82, -87, 101, -88, -79, -76, -72, -86, -87, 101, -88, -90, -75, -71, -82, -76, -77, 101, -78, -82, -78, -86, 101, -71, -66, -75, -86, 101, -75, -73, -76, -69, -82, -87, -86, -87, 127, 101, -38, -23, -23, -27, -30, -36, -38, -19, -30, -24, -25, -88, -36, -34, -38, -90, -81, -87, -79, SocketData.CLAZZ_TYPE_CODE, -101, -101, -105, -108, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_CODE, -97, -108, -102, -103, 90, SocketData.CLAZZ_TYPE_FILE, -112, SocketData.CLAZZ_TYPE_CODE, 88, 98, 91, 99};
    }

    static {
        A01();
    }

    public C1030Kh(List<C2312or> list) {
        this.A00 = list;
        this.A01 = new H1[list.size()];
    }

    public final void A02(long j, C4J c4j) {
        if (c4j.A07() < 9) {
            return;
        }
        int userDataIdentifier = c4j.A0C();
        int iA0C = c4j.A0C();
        int iA0I = c4j.A0I();
        if (userDataIdentifier == 434) {
            int userDataIdentifier2 = A03[3].charAt(2);
            if (userDataIdentifier2 != 118) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[7] = "5ag0VzOfRdhx9UNauvnxAz";
            strArr[4] = "f0o3UWjxlhBFesYxHlhgg4";
            if (iA0C == 1195456820 && iA0I == 3) {
                GR.A04(j, c4j, this.A01);
            }
        }
    }

    public final void A03(GY gy, C1027Ke c1027Ke) {
        for (int i = 0; i < i; i++) {
            c1027Ke.A05();
            H1 h1AJh = gy.AJh(c1027Ke.A03(), 3);
            C2312or c2312or = this.A00.get(i);
            String str = c2312or.A0W;
            C3M.A09(A00(43, 19, 115).equals(str) || A00(62, 19, 37).equals(str), A00(0, 43, 63) + str);
            C2D c2dA11 = new C2D().A0y(c1027Ke.A04()).A11(str);
            int i2 = c2312or.A0H;
            C2D c2dA10 = c2dA11.A0n(i2).A10(c2312or.A0V);
            int i3 = c2312or.A03;
            h1AJh.A6W(c2dA10.A0Z(i3).A12(c2312or.A0X).A14());
            this.A01[i] = h1AJh;
        }
    }
}
