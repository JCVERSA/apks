package com.facebook.ads.redexgen.core;

import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import java.util.Arrays;

public final class C0941Gv {
    public static byte[] A02;
    public static String[] A03 = {"", "4aEfCmC", "2kTu4wHTiMw5FCYmIpZKoA3S7RkYvI9O", "", "w", "MqF3b2p", "5cCqnzmPstBPsSiWHPZbbxeHAyWMz3nO", "kSg1dz9TqTWY2puBAJqsQN0JUmM78NMM"};
    public final C0943Gx A00;
    public final C0943Gx A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 82);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{27, 23, 123, 7};
    }

    static {
        A01();
    }

    public C0941Gv(C0943Gx c0943Gx) {
        this(c0943Gx, c0943Gx);
    }

    public C0941Gv(C0943Gx c0943Gx, C0943Gx c0943Gx2) {
        this.A00 = (C0943Gx) C3M.A01(c0943Gx);
        this.A01 = (C0943Gx) C3M.A01(c0943Gx2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0941Gv c0941Gv = (C0941Gv) obj;
        if (A03[7].charAt(24) != 'U') {
            throw new RuntimeException();
        }
        A03[4] = GslbInterceptor.HEADER_KEY_GSLB;
        return this.A00.equals(c0941Gv.A00) && this.A01.equals(c0941Gv.A01);
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }

    public final String toString() {
        String strA00;
        StringBuilder sbAppend = new StringBuilder().append(A00(2, 1, 114)).append(this.A00);
        if (!this.A00.equals(this.A01)) {
            strA00 = A00(0, 2, 101) + this.A01;
        } else {
            if (A03[0].length() != 0) {
                throw new RuntimeException();
            }
            A03[0] = "";
            strA00 = A00(0, 0, 76);
        }
        return sbAppend.append(strA00).append(A00(3, 1, 8)).toString();
    }
}
