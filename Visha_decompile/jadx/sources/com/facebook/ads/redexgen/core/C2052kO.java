package com.facebook.ads.redexgen.core;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

public final class C2052kO extends AbstractC0996Iz {
    public static byte[] A05;
    public static String[] A06 = {"uV3egKqPt", "vbtXlOI", "gip2ILD7nBGTUOP5yb7zSULibNYEk", "ypzju5tbq0Qdtgd67o3qNaulkzBfCJSX", "gCa1Tkio4U0hXnRqOcWVPONwWAtrpMS5", CmcdData.OBJECT_TYPE_MANIFEST, "OXoEHzgO5FTzqO33f", CmcdData.OBJECT_TYPE_INIT_SEGMENT};
    public int A00;
    public H5 A01;
    public H7 A02;
    public J0 A03;
    public boolean A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final J0 A02(C4J c4j) throws IOException {
        if (this.A02 == null) {
            this.A02 = H8.A06(c4j);
            return null;
        }
        if (this.A01 == null) {
            this.A01 = H8.A04(c4j);
            return null;
        }
        H7 h7 = this.A02;
        H5 h5 = this.A01;
        byte[] bArr = new byte[c4j.A0A()];
        System.arraycopy(c4j.A0l(), 0, bArr, 0, c4j.A0A());
        H6[] h6ArrA0D = H8.A0D(c4j, h7.A05);
        return new J0(h7, h5, bArr, h6ArrA0D, H8.A00(h6ArrA0D.length - 1));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A05 = new byte[]{-108, -88, -105, -100, -94, 98, -87, -94, -91, -107, -100, -90};
    }

    static {
        A04();
    }

    public static int A00(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    public static int A01(byte b, J0 j0) {
        if (!j0.A04[A00(b, j0.A00, 1)].A03) {
            int modeNumber = j0.A02.A03;
            return modeNumber;
        }
        int modeNumber2 = j0.A02.A04;
        return modeNumber2;
    }

    public static void A05(C4J c4j, long j) {
        if (c4j.A08() < c4j.A0A() + 4) {
            c4j.A0i(Arrays.copyOf(c4j.A0l(), c4j.A0A() + 4));
        } else {
            c4j.A0e(c4j.A0A() + 4);
        }
        byte[] bArrA0l = c4j.A0l();
        bArrA0l[c4j.A0A() - 4] = (byte) (j & 255);
        bArrA0l[c4j.A0A() - 3] = (byte) ((j >>> 8) & 255);
        bArrA0l[c4j.A0A() - 2] = (byte) ((j >>> 16) & 255);
        bArrA0l[c4j.A0A() - 1] = (byte) (255 & (j >>> 24));
    }

    public static boolean A06(C4J c4j) {
        try {
            return H8.A0C(1, c4j, true);
        } catch (C05802i unused) {
            return false;
        }
    }

    @Override
    public final long A09(C4J c4j) {
        int i = 0;
        if ((c4j.A0l()[0] & 1) == 1) {
            return -1L;
        }
        byte b = c4j.A0l()[0];
        if (A06[4].charAt(1) != 'C') {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[0] = "17tCp0Qcd";
        strArr[6] = "uqZ30DdcDRhFwj0kQ";
        int samplesInPacket = A01(b, (J0) C3M.A02(this.A03));
        if (this.A04) {
            int packetBlockSize = this.A00;
            i = (packetBlockSize + samplesInPacket) / 4;
        }
        A05(c4j, i);
        this.A04 = true;
        this.A00 = samplesInPacket;
        return i;
    }

    @Override
    public final void A0A(long j) {
        super.A0A(j);
        this.A04 = j != 0;
        this.A00 = this.A02 != null ? this.A02.A03 : 0;
    }

    @Override
    public final void A0B(boolean z) {
        super.A0B(z);
        if (z) {
            this.A03 = null;
            this.A02 = null;
            this.A01 = null;
        }
        this.A00 = 0;
        this.A04 = false;
    }

    @Override
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean A0C(C4J c4j, long j, C0995Iy c0995Iy) throws IOException {
        if (this.A03 != null) {
            C3M.A01(c0995Iy.A00);
            return false;
        }
        this.A03 = A02(c4j);
        if (this.A03 == null) {
            return true;
        }
        J0 j0 = this.A03;
        H7 h7 = j0.A02;
        ArrayList<byte[]> codecInitializationData = new ArrayList<>();
        codecInitializationData.add(h7.A09);
        codecInitializationData.add(j0.A03);
        c0995Iy.A00 = new C2D().A11(A03(0, 12, 22)).A0a(h7.A02).A0j(h7.A00).A0b(h7.A05).A0m(h7.A06).A12(codecInitializationData).A0v(H8.A02(MetaExoPlayerCustomizedCollections.A02(j0.A01.A02))).A14();
        return true;
    }
}
