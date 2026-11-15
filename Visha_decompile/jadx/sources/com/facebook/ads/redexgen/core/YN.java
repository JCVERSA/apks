package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.mozilla.classfile.ByteCode;

public final class YN implements InterfaceC1712eb {
    public static byte[] A01;
    public final C1609cu A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{82, 39, 76, 72, 39, 90, 101, 101, 102, 39, 88, 101, 127, 126, 99, 100, 109, 39, 94, 101, 97, 111, 100, 12, 10, 28, ByteCode.T_LONG, 84, 24, 30, 28, 23, 13};
    }

    public YN(C1609cu c1609cu) {
        this.A00 = c1609cu;
    }

    @Override
    public final Map<String, String> A6Y(boolean z) {
        HashMap map = new HashMap();
        if (!AbstractC1219Rr.A00().A04()) {
            map.put(A00(0, 23, 64), TY.A00().A01(this.A00, true).A04());
        }
        map.put(A00(23, 10, 51), AbstractC1254Tb.A06(new T6(this.A00), this.A00, z));
        return map;
    }
}
