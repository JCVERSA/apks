package com.facebook.ads.redexgen.core;

import com.hunantv.media.drm.IDrmSession;
import java.io.IOException;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class C1997jV implements InterfaceC1032Kj {
    public static byte[] A0C;
    public static String[] A0D = {"bYPw9lwZ90LIMnDVrWR9nivpaP", "yFs6hGP2BjxCIYW4vwAvQB", "ThDP9clSa9Dn", "ZJ8KrZKjZ6YsWfu6TvhIHbPrHjBQXt73", "tonD2drFJKLGWlZx83XdaJTA2vW", "BxtbVLMcuUKNP9oDIvLT", "q4ZypHVOEkKJ", "0njOXKHdBu5kWS0YMUnz8"};
    public static final int[] A0E;
    public static final int[] A0F;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public final int A04;
    public final int A05;
    public final C2312or A06;
    public final C4J A07;
    public final GY A08;
    public final H1 A09;
    public final C1034Kl A0A;
    public final byte[] A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{-120, 109, -76, -68, -63, -121, 109, -51, 0, -8, -19, -21, -4, -19, -20, -88, -18, -6, -23, -11, -19, -5, -88, -8, -19, -6, -88, -22, -12, -9, -21, -13, -62, -88, -7, 13, -4, 1, 7, -57, 10, -7, 15};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3 = this.A0A.A02;
        int i4 = this.A0A.A05;
        int i5 = (i2 * 4) + (i * i3);
        int i6 = (i4 * 4) + i5;
        int i7 = (i3 / i4) - 4;
        int iA07 = ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255);
        int iMin = Math.min(bArr[i5 + 2] & 255, 88);
        int i8 = A0F[iMin];
        int i9 = ((this.A04 * i * i4) + i2) * 2;
        bArr2[i9] = (byte) (iA07 & 255);
        bArr2[i9 + 1] = (byte) (iA07 >> 8);
        for (int i10 = 0; i10 < i7 * 2; i10++) {
            int i11 = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)] & 255;
            int i12 = i10 % 2 == 0 ? i11 & 15 : i11 >> 4;
            int i13 = ((((i12 & 7) * 2) + 1) * i8) >> 3;
            if ((i12 & 8) != 0) {
                i13 = -i13;
            }
            iA07 = AbstractC06244a.A07(iA07 + i13, -32768, 32767);
            i9 += i4 * 2;
            bArr2[i9] = (byte) (iA07 & 255);
            bArr2[i9 + 1] = (byte) (iA07 >> 8);
            iMin = AbstractC06244a.A07(iMin + A0E[i12], 0, A0F.length - 1);
            i8 = A0F[iMin];
        }
    }

    static {
        A04();
        A0E = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        A0F = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, ByteCode.LRETURN, ByteCode.ARRAYLENGTH, IDrmSession.ERROR_SESSION_DRM_PSSHS_NOT_SUPPORT, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public C1997jV(GY gy, H1 h1, C1034Kl c1034Kl) throws C05802i {
        this.A08 = gy;
        this.A09 = h1;
        this.A0A = c1034Kl;
        this.A05 = Math.max(1, c1034Kl.A04 / 10);
        C4J scratch = new C4J(c1034Kl.A06);
        scratch.A0G();
        this.A04 = scratch.A0G();
        int i = c1034Kl.A05;
        int i2 = (((c1034Kl.A02 - (i * 4)) * 8) / (c1034Kl.A01 * i)) + 1;
        if (this.A04 == i2) {
            int numChannels = AbstractC06244a.A05(this.A05, this.A04);
            this.A0B = new byte[c1034Kl.A02 * numChannels];
            int maxBlocksToDecode = A02(this.A04, i);
            this.A07 = new C4J(maxBlocksToDecode * numChannels);
            int maxBlocksToDecode2 = c1034Kl.A04;
            int constantBitrate = ((maxBlocksToDecode2 * c1034Kl.A02) * 8) / this.A04;
            this.A06 = new C2D().A11(A03(34, 9, 83)).A0a(constantBitrate).A0j(constantBitrate).A0h(A02(this.A05, i)).A0b(c1034Kl.A05).A0m(c1034Kl.A04).A0i(2).A14();
            return;
        }
        throw C05802i.A01(A03(7, 27, 67) + i2 + A03(0, 7, 8) + this.A04, null);
    }

    private int A00(int i) {
        return i / (this.A0A.A05 * 2);
    }

    private int A01(int i) {
        return A02(i, this.A0A.A05);
    }

    public static int A02(int i, int i2) {
        return i * 2 * i2;
    }

    private void A05(int i) {
        long jA0U = this.A03 + AbstractC06244a.A0U(this.A02, 1000000L, this.A0A.A04);
        int iA01 = A01(i);
        this.A09.AIA(jA0U, 1, iA01, this.A01 - iA01, null);
        long timeUs = i;
        this.A02 += timeUs;
        this.A01 -= iA01;
    }

    private void A07(byte[] bArr, int i, C4J c4j) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int channelIndex = 0; channelIndex < blockIndex; channelIndex++) {
                A06(bArr, i2, channelIndex, c4j.A0l());
            }
        }
        int blockIndex = this.A04;
        int iA01 = A01(blockIndex * i);
        c4j.A0f(0);
        c4j.A0e(iA01);
    }

    @Override
    public final void AA0(int i, long j) {
        this.A08.AIN(new C1994jS(this.A0A, this.A04, i, j));
        this.A09.A6W(this.A06);
    }

    @Override
    public final void AI0(long j) {
        this.A00 = 0;
        this.A03 = j;
        this.A01 = 0;
        this.A02 = 0L;
    }

    @Override
    public final boolean AI9(InterfaceC2101lN interfaceC2101lN, long j) throws IOException {
        int iA00 = this.A05 - A00(this.A01);
        int targetFramesRemaining = this.A04;
        int blocksToDecode = AbstractC06244a.A05(iA00, targetFramesRemaining);
        int i = this.A0A.A02 * blocksToDecode;
        boolean z = j == 0;
        while (!z) {
            int targetFramesRemaining2 = this.A00;
            if (targetFramesRemaining2 >= i) {
                break;
            }
            int targetFramesRemaining3 = this.A00;
            int targetReadBytes = (int) Math.min(i - targetFramesRemaining3, j);
            byte[] bArr = this.A0B;
            int targetFramesRemaining4 = this.A00;
            int blocksToDecode2 = interfaceC2101lN.read(bArr, targetFramesRemaining4, targetReadBytes);
            if (blocksToDecode2 == -1) {
                z = true;
            } else {
                int targetFramesRemaining5 = this.A00;
                this.A00 = targetFramesRemaining5 + blocksToDecode2;
            }
        }
        int targetReadBytes2 = this.A00;
        int targetFramesRemaining6 = this.A0A.A02;
        int targetReadBytes3 = targetReadBytes2 / targetFramesRemaining6;
        if (targetReadBytes3 > 0) {
            A07(this.A0B, targetReadBytes3, this.A07);
            int blocksToDecode3 = this.A00;
            int targetFramesRemaining7 = this.A0A.A02;
            this.A00 = blocksToDecode3 - (targetFramesRemaining7 * targetReadBytes3);
            int blocksToDecode4 = A0D[3].charAt(16);
            if (blocksToDecode4 != 84) {
                throw new RuntimeException();
            }
            A0D[0] = "TvVFAtGQ";
            int targetReadBytes4 = this.A07.A0A();
            this.A09.AI7(this.A07, targetReadBytes4);
            int targetFramesRemaining8 = this.A01;
            this.A01 = targetFramesRemaining8 + targetReadBytes4;
            int targetFramesRemaining9 = this.A01;
            int blocksToDecode5 = A00(targetFramesRemaining9);
            int targetFramesRemaining10 = this.A05;
            if (blocksToDecode5 >= targetFramesRemaining10) {
                int targetFramesRemaining11 = this.A05;
                A05(targetFramesRemaining11);
            }
        }
        if (z) {
            int targetFramesRemaining12 = this.A01;
            int targetFramesRemaining13 = A00(targetFramesRemaining12);
            if (targetFramesRemaining13 > 0) {
                A05(targetFramesRemaining13);
            }
        }
        return z;
    }
}
