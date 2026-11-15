package com.facebook.ads.redexgen.core;

import android.media.MediaCodec;
import java.util.Arrays;
import okio.Utf8;

public class AY extends Exception {
    public static byte[] A05;
    public final AR A00;
    public final AY A01;
    public final String A02;
    public final String A03;
    public final boolean A04;

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A05 = new byte[]{0, 12, 49, 16, 22, 26, 17, 16, 7, 85, 28, 27, 28, 1, 85, 19, 20, 28, 25, 16, 17, 79, 85, 101, 68, 66, 78, 69, 68, 83, 1, 72, 79, 72, 85, 1, 71, 64, 72, 77, 68, 69, 27, 1, 122, Utf8.REPLACEMENT_BYTE, 78, 66, 29, 17, 19, 80, 24, 31, 29, 27, 28, 17, 17, 21, 80, 31, 26, 13, 80, 31, 16, 26, 12, 17, 23, 26, 6, 80, 19, 27, 26, 23, 31, 77, 80, 27, 6, 17, 14, 18, 31, 7, 27, 12, 80, 19, 27, 26, 23, 31, 29, 17, 26, 27, 29, 80, 51, 27, 26, 23, 31, 61, 17, 26, 27, 29, 44, 27, 16, 26, 27, 12, 27, 12, 33, 36, 47, 45, 21};
    }

    public AY(C2312or c2312or, Throwable th, boolean z, int i) {
        this(A03(23, 22, 80) + i + A03(45, 3, 19) + c2312or, th, c2312or.A0W, z, null, A02(i), null);
    }

    public AY(C2312or c2312or, Throwable th, boolean z, AR ar) {
        this(A03(2, 21, 4) + ar.A03 + A03(0, 2, 93) + c2312or, th, c2312or.A0W, z, ar, AbstractC06244a.A02 >= 21 ? A04(th) : null, null);
    }

    public AY(String str, Throwable th, String str2, boolean z, AR ar, String str3, AY ay) {
        super(str, th);
        this.A03 = str2;
        this.A04 = z;
        this.A00 = ar;
        this.A02 = str3;
        this.A01 = ay;
    }

    public AY A00(AY ay) {
        return new AY(getMessage(), getCause(), this.A03, this.A04, this.A00, this.A02, ay);
    }

    public static String A02(int i) {
        String strA03 = i < 0 ? A03(121, 4, 59) : A03(0, 0, 98);
        StringBuilder sb = new StringBuilder();
        String sign = A03(48, 73, 15);
        return sb.append(sign).append(strA03).append(Math.abs(i)).toString();
    }

    public static String A04(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
