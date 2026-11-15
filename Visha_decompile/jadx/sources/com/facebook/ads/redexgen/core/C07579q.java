package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C07579q extends AbstractC2290oU {
    public static byte[] A01;
    public static final C1R<C07579q> A02;
    public static final String A03;
    public final float A00;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{22, 3, 20, 5, 3, 8, 18, 70, ByteCode.T_LONG, 19, 21, 18, 70, 4, 3, 70, 15, 8, 70, 18, 14, 3, 70, 20, 7, 8, 1, 3, 70, 9, 0, 70, 61, 86, 74, 70, 87, 86, 86, 59};
    }

    static {
        A03();
        A03 = AbstractC06244a.A0h(1);
        A02 = new C1R() {
            @Override
            public final C1S A6X(Bundle bundle) {
                return C07579q.A00(bundle);
            }
        };
    }

    public C07579q() {
        this.A00 = -1.0f;
    }

    public C07579q(float f) {
        C3M.A09(f >= 0.0f && f <= 100.0f, A02(0, 40, 45));
        this.A00 = f;
    }

    public static C07579q A00(Bundle bundle) {
        C3M.A07(bundle.getInt(AbstractC2290oU.A02, -1) == 1);
        float f = bundle.getFloat(A03, -1.0f);
        return f == -1.0f ? new C07579q() : new C07579q(f);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C07579q) && this.A00 == ((C07579q) obj).A00;
    }

    public final int hashCode() {
        return BX.A00(Float.valueOf(this.A00));
    }
}
