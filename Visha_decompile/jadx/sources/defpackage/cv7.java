package defpackage;

import androidx.media3.muxer.MuxerUtil;

public abstract class cv7 {
    public static int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static long b(byte[] bArr, int i) {
        int iA = a(bArr, i);
        int iA2 = a(bArr, i + 4);
        return (((long) iA2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | ((((long) iA) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32);
    }

    public static void c(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
    }

    public static void d(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    public static int e(byte[] bArr, int i) {
        return (bArr[i + 3] << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static void f(byte[] bArr, int i, int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            iArr[i2 + i4] = e(bArr, i);
            i += 4;
        }
    }

    public static long g(byte[] bArr, int i) {
        return ((((long) e(bArr, i + 4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) << 32) | (((long) e(bArr, i)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    public static short h(byte[] bArr, int i) {
        return (short) (((bArr[i + 1] & 255) << 8) | (bArr[i] & 255));
    }

    public static void i(long j, byte[] bArr, int i) {
        c((int) (j >>> 32), bArr, i);
        c((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE), bArr, i + 4);
    }

    public static byte[] j(long j) {
        byte[] bArr = new byte[8];
        i(j, bArr, 0);
        return bArr;
    }

    public static void k(long j, byte[] bArr, int i) {
        d((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j), bArr, i);
        d((int) (j >>> 32), bArr, i + 4);
    }

    public static void l(long[] jArr, int i, int i2, byte[] bArr, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            k(jArr[i + i4], bArr, i3);
            i3 += 8;
        }
    }

    public static byte[] m(long j) {
        byte[] bArr = new byte[8];
        k(j, bArr, 0);
        return bArr;
    }

    public static void n(short s, byte[] bArr, int i) {
        bArr[i] = (byte) (s >>> 8);
        bArr[i + 1] = (byte) s;
    }

    public static void o(short s, byte[] bArr, int i) {
        bArr[i] = (byte) s;
        bArr[i + 1] = (byte) (s >>> 8);
    }
}
