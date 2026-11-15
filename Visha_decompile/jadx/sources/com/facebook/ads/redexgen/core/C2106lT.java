package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C2106lT implements InterfaceC0942Gw {
    public static byte[] A06;
    public final int A00;
    public final int[] A01;
    public final long[] A02;
    public final long[] A03;
    public final long[] A04;
    public final long A05;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{65, 57, 53, 113, 96, 103, 116, 97, 124, 122, 123, 102, 64, 102, 40, 111, 99, 44, 37, 37, 48, 38, 55, 48, 126, 53, 57, 106, 112, 99, 124, 106, 36, 105, 101, 49, 44, 40, 32, 16, 54, 120, 47, 4, 25, 2, 7, 37, 2, 8, 9, 20, 68, 0, 9, 2, ByteCode.T_LONG, 24, 4, 81};
    }

    public C2106lT(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.A01 = iArr;
        this.A03 = jArr;
        this.A02 = jArr2;
        this.A04 = jArr3;
        this.A00 = iArr.length;
        if (this.A00 > 0) {
            this.A05 = jArr2[this.A00 - 1] + jArr3[this.A00 - 1];
        } else {
            this.A05 = 0L;
        }
    }

    private final int A00(long j) {
        return AbstractC06244a.A0L(this.A04, j, true, true);
    }

    @Override
    public final long A7l() {
        return this.A05;
    }

    @Override
    public final C0941Gv A8t(long j) {
        int iA00 = A00(j);
        C0943Gx c0943Gx = new C0943Gx(this.A04[iA00], this.A03[iA00]);
        if (c0943Gx.A01 < j) {
            int chunkIndex = this.A00;
            if (iA00 != chunkIndex - 1) {
                int chunkIndex2 = iA00 + 1;
                long j2 = this.A04[chunkIndex2];
                int chunkIndex3 = iA00 + 1;
                C0943Gx seekPoint = new C0943Gx(j2, this.A03[chunkIndex3]);
                return new C0941Gv(c0943Gx, seekPoint);
            }
        }
        return new C0941Gv(c0943Gx);
    }

    @Override
    public final boolean AAa() {
        return true;
    }

    public final String toString() {
        return A01(42, 18, 116) + this.A00 + A01(25, 8, 1) + Arrays.toString(this.A01) + A01(15, 10, 91) + Arrays.toString(this.A03) + A01(33, 9, 93) + Arrays.toString(this.A04) + A01(1, 14, 13) + Arrays.toString(this.A02) + A01(0, 1, 112);
    }
}
