package com.facebook.ads.redexgen.core;

import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public final class C4N {
    public static byte[] A02;
    public static final C4N A03;
    public static final C4N A04;
    public final int A00;
    public final int A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 64);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE};
    }

    static {
        A01();
        A03 = new C4N(-1, -1);
        A04 = new C4N(0, 0);
    }

    public C4N(int i, int i2) {
        C3M.A07((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0));
        this.A01 = i;
        this.A00 = i2;
    }

    public final int A02() {
        return this.A00;
    }

    public final int A03() {
        return this.A01;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4N)) {
            return false;
        }
        C4N c4n = (C4N) obj;
        return this.A01 == c4n.A01 && this.A00 == c4n.A00;
    }

    public final int hashCode() {
        return this.A00 ^ ((this.A01 << 16) | (this.A01 >>> 16));
    }

    public final String toString() {
        return this.A01 + A00(0, 1, 44) + this.A00;
    }
}
