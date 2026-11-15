package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.util.Arrays;

public abstract class cgi {
    public static byte[] a(byte[] bArr, byte[] bArr2) {
        long jB = b(bArr, 0, 0);
        long jB2 = b(bArr, 3, 2) & 67108611;
        long jB3 = b(bArr, 6, 4) & 67092735;
        long jB4 = b(bArr, 9, 6) & 66076671;
        long jB5 = b(bArr, 12, 8) & 1048575;
        int i = 17;
        byte[] bArr3 = new byte[17];
        long j = 0;
        int i2 = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        while (true) {
            int length = bArr2.length;
            if (i2 >= length) {
                long j6 = j + (j2 >> 26);
                long j7 = j6 & 67108863;
                long j8 = j3 + (j6 >> 26);
                long j9 = j8 & 67108863;
                long j10 = j4 + (j8 >> 26);
                long j11 = j10 & 67108863;
                long j12 = j5 + ((j10 >> 26) * 5);
                long j13 = j12 & 67108863;
                long j14 = j13 + 5;
                long j15 = (j2 & 67108863) + (j12 >> 26);
                long j16 = j15 + (j14 >> 26);
                long j17 = (j16 >> 26) + j7;
                long j18 = j9 + (j17 >> 26);
                long j19 = (j11 + (j18 >> 26)) - 67108864;
                long j20 = j19 >> 63;
                long j21 = ~j20;
                long j22 = (j15 & j20) | (j16 & 67108863 & j21);
                long j23 = (j7 & j20) | (j17 & 67108863 & j21);
                long j24 = (j9 & j20) | (j18 & 67108863 & j21);
                long j25 = (j11 & j20) | (j19 & j21);
                long jC = (((j20 & j13) | (j14 & 67108863 & j21) | (j22 << 26)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + c(bArr, 16);
                long jC2 = (((j22 >> 6) | (j23 << 20)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + c(bArr, 20);
                long jC3 = (((j23 >> 12) | (j24 << 14)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + c(bArr, 24);
                long jC4 = (((j24 >> 18) | (j25 << 8)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + c(bArr, 28);
                byte[] bArr4 = new byte[16];
                d(bArr4, jC & MuxerUtil.UNSIGNED_INT_MAX_VALUE, 0);
                long j26 = jC2 + (jC >> 32);
                d(bArr4, j26 & MuxerUtil.UNSIGNED_INT_MAX_VALUE, 4);
                long j27 = jC3 + (j26 >> 32);
                d(bArr4, j27 & MuxerUtil.UNSIGNED_INT_MAX_VALUE, 8);
                d(bArr4, (jC4 + (j27 >> 32)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE, 12);
                return bArr4;
            }
            int iMin = Math.min(16, length - i2);
            System.arraycopy(bArr2, i2, bArr3, 0, iMin);
            bArr3[iMin] = 1;
            if (iMin != 16) {
                Arrays.fill(bArr3, iMin + 1, i, (byte) 0);
            }
            long j28 = jB5 * 5;
            long j29 = jB4 * 5;
            long j30 = jB3 * 5;
            long jB6 = j5 + b(bArr3, 0, 0);
            long jB7 = j2 + b(bArr3, 3, 2);
            long jB8 = j + b(bArr3, 6, 4);
            long jB9 = j3 + b(bArr3, 9, 6);
            long jB10 = j4 + (b(bArr3, 12, 8) | ((long) (bArr3[16] << 24)));
            long j31 = jB7 * jB;
            long j32 = jB7 * jB2;
            long j33 = jB7 * jB3;
            long j34 = jB9 * jB;
            long j35 = jB7 * jB4;
            long j36 = jB10 * jB;
            long j37 = (jB6 * jB) + (jB7 * j28) + (jB8 * j29) + (jB9 * j30) + (jB2 * 5 * jB10);
            long j38 = (jB6 * jB2) + j31 + (jB8 * j28) + (jB9 * j29) + (j30 * jB10) + (j37 >> 26);
            long j39 = (jB6 * jB3) + j32 + (jB8 * jB) + (jB9 * j28) + (j29 * jB10) + (j38 >> 26);
            long j40 = (jB6 * jB4) + j33 + (jB8 * jB2) + j34 + (jB10 * j28) + (j39 >> 26);
            long j41 = (jB6 * jB5) + j35 + (jB8 * jB3) + (jB9 * jB2) + j36 + (j40 >> 26);
            long j42 = (j37 & 67108863) + ((j41 >> 26) * 5);
            j2 = (j38 & 67108863) + (j42 >> 26);
            i2 += 16;
            j = j39 & 67108863;
            j3 = j40 & 67108863;
            j4 = j41 & 67108863;
            i = 17;
            j5 = j42 & 67108863;
        }
    }

    public static long b(byte[] bArr, int i, int i2) {
        return (c(bArr, i) >> i2) & 67108863;
    }

    public static long c(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((long) (((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }

    public static void d(byte[] bArr, long j, int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = (byte) (255 & j);
            j >>= 8;
        }
    }
}
