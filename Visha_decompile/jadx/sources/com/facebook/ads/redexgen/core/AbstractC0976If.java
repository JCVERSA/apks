package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.UUID;
import org.mozilla.classfile.ByteCode;

public abstract class AbstractC0976If {
    public static byte[] A00;
    public static String[] A01 = {"f", "wBzTr9isyWuzk0Was82fzP", "sjHXZ8xDB", "rmj8ZpQPq6N", "k0JnkexrU5JvppKLiAvWnmQe", "wOTrIZh22Rcriy8Kptm38zvp", "MO9vm10BV89BFpJ5cx5aSl", "G2cEiJ7mV"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {-68, -33, -33, -44, -83, -32, -37, -39, -63, -32, -43, -40, -20, 5, 10, 12, 7, 7, 6, 9, ByteCode.T_LONG, -4, -5, -73, 7, 10, 10, -1, -73, 13, -4, 9, 10, 0, 6, 5, -47, -73};
        String[] strArr = A01;
        if (strArr[2].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[2] = "tjOAGVDnT";
        strArr2[7] = "ur6F1gHbb";
        A00 = bArr;
    }

    static {
        A03();
    }

    public static C0975Ie A00(byte[] bArr) {
        C4J c4j = new C4J(bArr);
        if (c4j.A0A() < 32) {
            return null;
        }
        c4j.A0f(0);
        if (c4j.A0C() != c4j.A07() + 4 || c4j.A0C() != 1886614376) {
            return null;
        }
        int dataSize = II.A01(c4j.A0C());
        if (dataSize > 1) {
            AnonymousClass44.A07(A01(0, 12, 82), A01(12, 26, 125) + dataSize);
            return null;
        }
        UUID uuid = new UUID(c4j.A0P(), c4j.A0P());
        if (dataSize == 1) {
            c4j.A0g(c4j.A0L() * 16);
        }
        int atomType = c4j.A0L();
        String[] strArr = A01;
        if (strArr[2].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A01[6] = "Op4nBnIC0DPoqkcvuw04qL";
        if (atomType != c4j.A07()) {
            return null;
        }
        byte[] bArr2 = new byte[atomType];
        c4j.A0k(bArr2, 0, atomType);
        return new C0975Ie(uuid, dataSize, bArr2);
    }

    public static UUID A02(byte[] bArr) {
        C0975Ie parsedAtom = A00(bArr);
        if (parsedAtom != null) {
            return parsedAtom.A01;
        }
        return null;
    }
}
