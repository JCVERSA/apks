package com.alibaba.sdk.android.oss.common.utils;

import java.lang.reflect.Array;
import java.util.zip.Checksum;

public class CRC64 implements Checksum {
    private static final int GF2_DIM = 64;
    private static final long POLY = -3932672073523589310L;
    private static final long[][] table = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 256);
    private long value = 0;

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            long j10 = i10;
            for (int i11 = 0; i11 < 8; i11++) {
                j10 = (j10 & 1) == 1 ? (j10 >>> 1) ^ POLY : j10 >>> 1;
            }
            table[0][i10] = j10;
        }
        for (int i12 = 0; i12 < 256; i12++) {
            long j11 = table[0][i12];
            for (int i13 = 1; i13 < 8; i13++) {
                long[][] jArr = table;
                j11 = (j11 >>> 8) ^ jArr[0][(int) (255 & j11)];
                jArr[i13][i12] = j11;
            }
        }
    }

    public static long combine(long j10, long j11, long j12) {
        if (j12 == 0) {
            return j10;
        }
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        jArr2[0] = -3932672073523589310L;
        long j13 = 1;
        for (int i10 = 1; i10 < 64; i10++) {
            jArr2[i10] = j13;
            j13 <<= 1;
        }
        gf2MatrixSquare(jArr, jArr2);
        gf2MatrixSquare(jArr2, jArr);
        long jGf2MatrixTimes = j10;
        long j14 = j12;
        do {
            gf2MatrixSquare(jArr, jArr2);
            if ((j14 & 1) == 1) {
                jGf2MatrixTimes = gf2MatrixTimes(jArr, jGf2MatrixTimes);
            }
            long j15 = j14 >>> 1;
            if (j15 == 0) {
                break;
            }
            gf2MatrixSquare(jArr2, jArr);
            if ((j15 & 1) == 1) {
                jGf2MatrixTimes = gf2MatrixTimes(jArr2, jGf2MatrixTimes);
            }
            j14 >>>= 2;
        } while (j14 != 0);
        return jGf2MatrixTimes ^ j11;
    }

    private static void gf2MatrixSquare(long[] jArr, long[] jArr2) {
        for (int i10 = 0; i10 < 64; i10++) {
            jArr[i10] = gf2MatrixTimes(jArr2, jArr2[i10]);
        }
    }

    private static long gf2MatrixTimes(long[] jArr, long j10) {
        int i10 = 0;
        long j11 = 0;
        while (j10 != 0) {
            if ((j10 & 1) == 1) {
                j11 ^= jArr[i10];
            }
            j10 >>>= 1;
            i10++;
        }
        return j11;
    }

    @Override
    public long getValue() {
        return this.value;
    }

    @Override
    public void reset() {
        this.value = 0L;
    }

    @Override
    public void update(int i10) {
        update(new byte[]{(byte) (i10 & 255)}, 1);
    }

    public void update(byte[] bArr, int i10) {
        update(bArr, 0, i10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        this.value = ~this.value;
        int i12 = i10;
        int i13 = i11;
        while (i13 >= 8) {
            long[][] jArr = table;
            long[] jArr2 = jArr[7];
            long j10 = this.value;
            this.value = ((((((jArr[6][(int) (((long) (bArr[i12 + 1] & 255)) ^ ((j10 >>> 8) & 255))] ^ jArr2[(int) ((j10 & 255) ^ ((long) (bArr[i12] & 255)))]) ^ jArr[5][(int) (((j10 >>> 16) & 255) ^ ((long) (bArr[i12 + 2] & 255)))]) ^ jArr[4][(int) (((j10 >>> 24) & 255) ^ ((long) (bArr[i12 + 3] & 255)))]) ^ jArr[3][(int) (((j10 >>> 32) & 255) ^ ((long) (bArr[i12 + 4] & 255)))]) ^ jArr[2][(int) (((j10 >>> 40) & 255) ^ ((long) (bArr[i12 + 5] & 255)))]) ^ jArr[1][(int) ((255 & (j10 >>> 48)) ^ ((long) (bArr[i12 + 6] & 255)))]) ^ jArr[0][(int) ((j10 >>> 56) ^ ((long) (bArr[i12 + 7] & 255)))];
            i12 += 8;
            i13 -= 8;
        }
        while (i13 > 0) {
            long[] jArr3 = table[0];
            long j11 = this.value;
            this.value = (j11 >>> 8) ^ jArr3[(int) ((((long) bArr[i12]) ^ j11) & 255)];
            i12++;
            i13--;
        }
        this.value = ~this.value;
    }
}
