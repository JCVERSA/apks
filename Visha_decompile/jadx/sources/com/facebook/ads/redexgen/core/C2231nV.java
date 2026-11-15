package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import androidx.media3.exoplayer.DefaultLoadControl;
import com.transsion.socket.pkgdata.SocketData;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C2231nV implements C6S {
    public static byte[] A0B;
    public static String[] A0C = {"WWBqbqM8cT7NtZ20aOE3uXs3Aw8DSv9K", "wsMqXc0RGaIy4bMjDS0CDKFK5K3H0E7a", "tXUn5oHGArEZhR5EfIYxUHEmkE2i7Wlz", "L3oqKt7yiugAXq9nLkVCiYddeszNHWIU", "GxMV2HKS42DeS6e3iSG9rTJ", "iBUmcZRwnnz5BMe8LKV", "MLtAALupoqSZMT31TgfSKHmksSEA2gyG", "KlBG0Bt2bdiLbLP3pzzetkFN2"};
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final long A07;
    public final C2120lh A08;
    public final boolean A09;
    public final boolean A0A;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{SocketData.CLAZZ_TYPE_HEART_BEAT, -60, -62, -49, -49, -48, -43, SocketData.CLAZZ_TYPE_HEART_BEAT, -61, -58, SocketData.CLAZZ_TYPE_HEART_BEAT, -51, -58, -44, -44, SocketData.CLAZZ_TYPE_HEART_BEAT, -43, -55, -62, -49, SocketData.CLAZZ_TYPE_HEART_BEAT, 123, -91, -58, -57, -62, -42, -51, -43, -83, -48, -62, -59, -92, -48, -49, -43, -45, -48, -51, 3, 16, 33, 22, 20, 35, -49, 17, 36, 21, 21, 20, 33, -49, 34, 24, 41, 20, -49, 33, 20, 16, 18, 23, 20, 19, -49, 38, 24, 35, 23, -49, 27, 20, 34, 34, -49, 35, 23, 16, 29, -49, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -33, -33, 28, 34, -49, 30, 21, -49, 17, 36, 21, 21, 20, 33, 20, 19, -49, 28, 20, 19, 24, 16, -49, 19, 16, 35, 16, -35, -36, -37, -35, -27, -68, -17, -32, -32, -33, -20, -66, -17, -20, -37, -18, -29, -23, -24, -57, -19, -77, -58, -73, -73, -74, -61, -105, -64, -61, -95, -67, -78, -54, -77, -78, -76, -68, -110, -73, -59, -74, -61, -93, -74, -77, -58, -73, -73, -74, -61, -98, -60, 21, 40, 25, 25, 24, 37, -7, 34, 37, 3, 31, 20, 44, 21, 20, 22, 30, 0, 38, -12, -24, -1, -55, -4, -19, -19, -20, -7, -44, -6, 43, 39, 44, 0, 51, 36, 36, 35, 48, ByteCode.T_LONG, 49};
    }

    static {
        A03();
    }

    public C2231nV() {
        this(new C2120lh(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    public C2231nV(C2120lh c2120lh, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        int i7;
        String strA02 = A02(163, 19, 110);
        String strA03 = A02(21, 1, 6);
        A04(i3, 0, strA02, strA03);
        String strA04 = A02(131, 32, 12);
        A04(i4, 0, strA04, strA03);
        String strA05 = A02(193, 11, 121);
        A04(i, i3, strA05, strA02);
        A04(i, i4, strA05, strA04);
        A04(i2, i, A02(182, 11, 66), strA05);
        A04(i6, 0, A02(111, 20, 53), strA03);
        this.A08 = c2120lh;
        this.A07 = AbstractC06244a.A0O(i);
        this.A06 = AbstractC06244a.A0O(i2);
        this.A05 = AbstractC06244a.A0O(i3);
        this.A04 = AbstractC06244a.A0O(i4);
        this.A02 = i5;
        if (this.A02 != -1) {
            i7 = this.A02;
        } else {
            i7 = 13107200;
        }
        this.A00 = i7;
        this.A09 = z;
        this.A03 = AbstractC06244a.A0O(i6);
        this.A0A = z2;
    }

    public static int A00(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
            case 1:
                return 13107200;
            case 2:
                if (A0C[7].length() == 32) {
                    throw new RuntimeException();
                }
                A0C[5] = "ABED08YC";
                return DefaultLoadControl.DEFAULT_VIDEO_BUFFER_SIZE;
            case 3:
                return 131072;
            case 4:
                return 131072;
            case 5:
                return 131072;
            case 6:
                return 131072;
        }
    }

    private final int A01(InterfaceC2122lj[] interfaceC2122ljArr) {
        int iA00 = 0;
        for (InterfaceC2122lj interfaceC2122lj : interfaceC2122ljArr) {
            if (interfaceC2122lj != null) {
                int targetBufferSize = interfaceC2122lj.A9D().A02;
                iA00 += A00(targetBufferSize);
            }
        }
        int iMax = Math.max(13107200, iA00);
        if (A0C[0].charAt(6) == 'f') {
            throw new RuntimeException();
        }
        A0C[0] = "RHrwW0B94f4UqoylhYQPwgHgnQSWW3zM";
        return iMax;
    }

    public static void A04(int i, int i2, String str, String str2) {
        C3M.A09(i >= i2, str + A02(0, 21, 28) + str2);
    }

    private void A05(boolean z) {
        int i;
        if (this.A02 == -1) {
            i = 13107200;
        } else {
            i = this.A02;
        }
        this.A00 = i;
        this.A01 = false;
        if (z) {
            this.A08.A01();
        }
    }

    @Override
    public final C2120lh A6n() {
        return this.A08;
    }

    @Override
    public final long A6s(C07147m c07147m) {
        return this.A03;
    }

    @Override
    public final void AEj(C07147m c07147m) {
        A05(false);
    }

    @Override
    public final void AEu(C07147m c07147m) {
        A05(true);
    }

    @Override
    public final void AFN(C07147m c07147m) {
        A05(true);
    }

    @Override
    public final void AFV(C6R c6r, C2149mA c2149mA, InterfaceC2122lj[] interfaceC2122ljArr) {
        int iA01;
        if (this.A02 == -1) {
            iA01 = A01(interfaceC2122ljArr);
        } else {
            iA01 = this.A02;
        }
        this.A00 = iA01;
        this.A08.A02(this.A00);
    }

    @Override
    public final boolean AI3(C07147m c07147m) {
        return this.A0A;
    }

    @Override
    public final boolean AJB(C6R c6r) {
        boolean z = true;
        boolean z2 = this.A08.A00() >= this.A00;
        long jMin = this.A07;
        if (c6r.A00 > 1.0f) {
            jMin = Math.min(AbstractC06244a.A0Q(jMin, c6r.A00), this.A06);
        }
        if (c6r.A01 < Math.max(jMin, 500000L)) {
            boolean targetBufferSizeReached = this.A09;
            if (!targetBufferSizeReached && z2) {
                z = false;
            }
            this.A01 = z;
            boolean targetBufferSizeReached2 = this.A01;
            if (!targetBufferSizeReached2 && c6r.A01 < 500000) {
                AnonymousClass44.A07(A02(22, 18, 28), A02(40, 71, 106));
            }
        } else if (c6r.A01 >= this.A06 || z2) {
            this.A01 = false;
        }
        boolean targetBufferSizeReached3 = this.A01;
        return targetBufferSizeReached3;
    }

    @Override
    public final boolean AJE(long j, float f, boolean z, boolean z2, long minBufferDurationUs) {
        long jA0R = AbstractC06244a.A0R(j, f);
        long jMin = z ? this.A04 : this.A05;
        String[] strArr = A0C;
        if (strArr[3].charAt(20) == strArr[1].charAt(20)) {
            throw new RuntimeException();
        }
        A0C[4] = "l7tzQS6toEbIIxnpfZA1NGx";
        if (minBufferDurationUs != C.TIME_UNSET) {
            jMin = Math.min(minBufferDurationUs / 2, jMin);
        }
        return jMin <= 0 || jA0R >= jMin || (!this.A09 && this.A08.A00() >= this.A00);
    }
}
