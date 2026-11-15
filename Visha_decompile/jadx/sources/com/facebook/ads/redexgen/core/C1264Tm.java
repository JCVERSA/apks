package com.facebook.ads.redexgen.core;

import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import java.util.Locale;

public final class C1264Tm {
    public static byte[] A02;
    public final int A00;
    public final int A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 34);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-85, -48, -40, -61, -50, -53, -58, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -53, -48, -58, -57, -38, -90, -57, -50, -42, -61, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_FILE_BLOCK, -121, -58, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -53, -48, -58, -57, -38, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -97, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -121, -58, SocketData.CLAZZ_TYPE_STRING, -56, -53, -50, -57, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_FILE_BLOCK, -121, -58, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -98, SocketData.CLAZZ_TYPE_SEND_PACKAGE, SocketData.CLAZZ_TYPE_URI, -109, -12, -9, -6, -13, -82, -53, -82, -77, -14, -82, -76, -76, -82, -9, -4, -14, -13, 6, -82, -53, -82, -77, -14, -47, -44, -41, -48, SocketData.CLAZZ_TYPE_STRING, -88, -88, SocketData.CLAZZ_TYPE_STRING, -104, -100, SocketData.CLAZZ_TYPE_STRING, -111, -111, SocketData.CLAZZ_TYPE_STRING, -44, -39, -49, -48, -29, SocketData.CLAZZ_TYPE_STRING, -88, SocketData.CLAZZ_TYPE_STRING, -112, -49};
    }

    public C1264Tm() {
        this(-1, -1);
    }

    public C1264Tm(int i, int i2) {
        if (i < -1) {
            throw new IllegalArgumentException(String.format(Locale.US, A00(35, 14, 64), Integer.valueOf(i)));
        }
        if (i >= 0 && i2 < 0) {
            throw new IllegalArgumentException(String.format(Locale.US, A00(49, 23, 108), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        if (i == -1 && i2 != -1) {
            throw new IllegalArgumentException(String.format(Locale.US, A00(72, 24, 73), Integer.valueOf(i2)));
        }
        this.A00 = i;
        this.A01 = i2;
    }

    public final int A02() {
        return this.A00;
    }

    public final int A03() {
        return this.A01;
    }

    public final int A04(C1264Tm c1264Tm) {
        if (this.A00 != c1264Tm.A00) {
            return this.A00 - c1264Tm.A00;
        }
        return this.A01 - c1264Tm.A01;
    }

    public final C1264Tm A05(int i) {
        if (this.A01 + i >= 0) {
            return new C1264Tm(this.A00, this.A01 + i);
        }
        throw new IllegalArgumentException(String.format(Locale.US, A00(0, 35, 64), Integer.valueOf(i), Integer.valueOf(this.A01)));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1264Tm)) {
            return false;
        }
        C1264Tm c1264Tm = (C1264Tm) obj;
        return c1264Tm.A00 == this.A00 && c1264Tm.A01 == this.A01;
    }

    public final int hashCode() {
        return (this.A00 * 2) + (this.A01 * 3);
    }
}
