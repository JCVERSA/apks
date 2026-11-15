package com.facebook.ads.redexgen.core;

import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class AnonymousClass36 {
    public static byte[] A04;
    public static final AnonymousClass36 A05;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-23, -35, 32, 37, 30, 43, 43, 34, 41, 0, 44, 50, 43, 49, -6, 14, 2, 71, 80, 69, 81, 70, 75, 80, 73, 31, -33, 19, 2, 7, 13, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, 13, 16, ByteCode.T_LONG, -1, 18, -7, 17, -1, ByteCode.T_LONG, 14, 10, 3, -16, -1, 18, 3, -37};
    }

    static {
        A01();
        A05 = new AnonymousClass36(-1, -1, -1);
    }

    public AnonymousClass36(int i, int i2, int i3) {
        int iA06;
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        if (AbstractC06244a.A15(i3)) {
            iA06 = AbstractC06244a.A06(i3, i2);
        } else {
            iA06 = -1;
        }
        this.A00 = iA06;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnonymousClass36)) {
            return false;
        }
        AnonymousClass36 anonymousClass36 = (AnonymousClass36) obj;
        return this.A03 == anonymousClass36.A03 && this.A01 == anonymousClass36.A01 && this.A02 == anonymousClass36.A02;
    }

    public final int hashCode() {
        return BX.A00(Integer.valueOf(this.A03), Integer.valueOf(this.A01), Integer.valueOf(this.A02));
    }

    public final String toString() {
        return A00(26, 23, 59) + this.A03 + A00(0, 15, 90) + this.A01 + A00(15, 11, 127) + this.A02 + ']';
    }
}
