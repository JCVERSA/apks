package com.facebook.ads.redexgen.core;

import android.media.MediaFormat;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C2224nO implements FQ, InterfaceC0909Fp, AnonymousClass70 {
    public static byte[] A04;
    public static String[] A05 = {"s2pX1dUuV9yMGkOQMpNHWy9uhNawnk9Y", "g94kU4b", "NzGTwCFJguijRpsE4vnu2khyHl2vzHxI", "mcwg2", "3H7kdFWigyqN00XNlLPoaD6s2Om", "arwBjFb", "zwCIEju4cqvLZ8D4reT2LOc82uEYQHt6", "4voNbHG588W1rePZ0VIdJriIAfqG9T"};
    public FQ A00;
    public FQ A01;
    public InterfaceC0909Fp A02;
    public InterfaceC0909Fp A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{2, 0, 17, 51, 12, 1, 0, 10, 35, 23, 4, 8, 0, 40, 0, 17, 4, 1, 4, 17, 4, 41, 12, 22, 17, 0, ByteCode.T_LONG, 0, 23};
    }

    static {
        A01();
    }

    public C2224nO() {
    }

    @Override
    public final void A9a(int i, Object obj) {
        switch (i) {
            case 7:
                this.A01 = (FQ) obj;
                return;
            case 8:
                this.A02 = (InterfaceC0909Fp) obj;
                return;
            case 10000:
                if (0 == 0) {
                    this.A00 = null;
                    this.A03 = null;
                    return;
                }
                throw new NullPointerException(A00(0, 29, 100));
            default:
                return;
        }
    }

    @Override
    public final void AFi(long j, long j2, C2312or c2312or, MediaFormat mediaFormat) {
        if (this.A00 != null) {
            FQ fq = this.A00;
            if (A05[0].charAt(20) != 'W') {
                throw new RuntimeException();
            }
            A05[4] = "rCzQpO90p93bI0FQ7tWj9IORt31";
            fq.AFi(j, j2, c2312or, mediaFormat);
        }
        if (this.A01 != null) {
            this.A01.AFi(j, j2, c2312or, mediaFormat);
        }
    }
}
