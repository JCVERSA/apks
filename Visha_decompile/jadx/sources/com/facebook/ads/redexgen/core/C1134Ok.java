package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C1134Ok implements ZY {
    public static byte[] A01;
    public final C6H A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-36, -38, -52, -39, -58, -55, -36, -51, -51, -52, -39, -52, -53, -58, -54, -45, -48, -54, -46, -58, -48, -56, -55, -58, -43, -56, -35, -48, -50, -56, -37, -48, -42, -43};
    }

    public C1134Ok(C6H c6h) {
        this.A00 = c6h;
    }

    @Override
    public final void AES(String str) {
        this.A00.A0C.setProgress(100);
        ((OD) this.A00).A05 = false;
    }

    @Override
    public final void AEU(String str) {
        ((OD) this.A00).A05 = true;
        this.A00.A0B.setUrl(str);
        if (this.A00.A00 > 1) {
            this.A00.A0H(A00(0, 34, 31));
        }
        C6H.A02(this.A00);
    }

    @Override
    public final void AEq(int i) {
        if (((OD) this.A00).A05) {
            this.A00.A0C.setProgress(i);
        }
    }

    @Override
    public final void AEt(String str) {
        this.A00.A0B.setTitle(str);
    }

    @Override
    public final void AEw() {
        this.A00.A0A.ACf(14);
    }
}
