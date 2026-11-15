package com.facebook.ads.redexgen.core;

import androidx.media3.common.PlaybackException;
import java.util.Arrays;

public class H0 implements ZY {
    public static byte[] A01;
    public static String[] A02 = {"lymitVL5Elx23yNuagrdcc1tj4byFzuO", "OtHhm4I6MY8qhok47NcALtT", "GJmhN4rXhrf709OMeDU9UKBK4KfDlX2Y", "UKN", "ioCWBc07RK8NAgZ7uqzQ2Ov99bHrMaFb", "vsb8Ufoa8H", "zp4FcHB1hqlJdpy7ZALmHMQwB62WRf78", "qbR"};
    public final C4K A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_AUTHENTICATION_EXPIRED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        if (A02[1].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[0] = "68tvMXLM0DzUKrc9PEEpmru8eIlurAzh";
        strArr[2] = "oZlS45uLmtttWs7KR8Y8sKnmk93hftbi";
        A01 = new byte[]{51, 49, 35, 48, 29, 44, 31, 52, 39, 37, 31, 50, 39, 45, 44, 29, 39, 31, 32};
    }

    static {
        A01();
    }

    public H0(C4K c4k) {
        this.A00 = c4k;
    }

    @Override
    public final void AES(String str) {
        this.A00.A0F = false;
        if (this.A00.A05 != null) {
            this.A00.A05.setProgress(100);
        }
        XP.A0L(this.A00.A05, 8);
    }

    @Override
    public final void AEU(String str) {
        this.A00.A0F = true;
        XP.A0L(this.A00.A05, 0);
        if (this.A00.A04 != null) {
            this.A00.A04.setUrl(str);
        }
        if (!this.A00.A0E && this.A00.A01 > 1) {
            this.A00.A0E = true;
            this.A00.A0n(A00(0, 19, 88));
        }
        C4K c4k = this.A00;
        if (A02[1].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "Ijw";
        strArr[3] = "65M";
        C4K.A03(c4k);
    }

    @Override
    public final void AEq(int i) {
        if (this.A00.A0F && this.A00.A05 != null) {
            this.A00.A05.setProgress(i);
        }
    }

    @Override
    public final void AEt(String str) {
        if (this.A00.A04 != null) {
            this.A00.A04.setTitle(str);
        }
    }

    @Override
    public final void AEw() {
        ((AbstractC0962Hr) this.A00).A0B.ACf(14);
    }
}
