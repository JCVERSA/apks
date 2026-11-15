package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;

public abstract class my6 {
    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (((long) iArr3[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static void c(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2] = iArr[i];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
    }

    public static int[] d() {
        return new int[5];
    }

    public static int[] e() {
        return new int[10];
    }

    public static boolean f(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] g(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] iArrD = d();
        for (int i = 0; i < 5; i++) {
            iArrD[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrD;
    }

    public static int h(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= 5) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    public static boolean i(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean j(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean k(int[] iArr) {
        for (int i = 0; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void l(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int i = 1;
        long j2 = ((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = j6 * j;
        iArr3[0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[4] = (int) j11;
        iArr3[5] = (int) (j11 >>> 32);
        for (int i2 = 5; i < i2; i2 = 5) {
            long j12 = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j13 = (j12 * j) + (((long) iArr3[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i] = (int) j13;
            int i3 = i + 1;
            long j14 = (j13 >>> 32) + (j12 * j2) + (((long) iArr3[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i3] = (int) j14;
            int i4 = i + 2;
            long j15 = j2;
            long j16 = (j14 >>> 32) + (j12 * j3) + (((long) iArr3[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i4] = (int) j16;
            int i5 = i + 3;
            long j17 = (j16 >>> 32) + (j12 * j4) + (((long) iArr3[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i5] = (int) j17;
            int i6 = i + 4;
            long j18 = (j17 >>> 32) + (j12 * j5) + (((long) iArr3[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i6] = (int) j18;
            iArr3[i + 5] = (int) (j18 >>> 32);
            j4 = j4;
            j = j;
            i = i3;
            j2 = j15;
        }
    }

    public static long m(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = (j * j2) + (((long) iArr2[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4] = (int) j3;
        long j4 = ((long) iArr[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (((long) iArr2[i3 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = ((long) iArr[i2 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = j6 + (j * j7) + j4 + (((long) iArr2[i3 + 2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 2] = (int) j8;
        long j9 = ((long) iArr[i2 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (((long) iArr2[i3 + 3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[i4 + 3] = (int) j10;
        long j11 = ((long) iArr[i2 + 4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr2[i3 + 4]));
        iArr3[i4 + 4] = (int) j12;
        return (j12 >>> 32) + j11;
    }

    public static int n(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = j & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = (j2 * j3) + (((long) iArr[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i2] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        int i3 = i2 + 1;
        long j7 = (j4 >>> 32) + j6 + (((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i3] = (int) j7;
        int i4 = i2 + 2;
        long j8 = (j7 >>> 32) + j5 + (((long) iArr[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i4] = (int) j8;
        long j9 = j8 >>> 32;
        int i5 = i2 + 3;
        long j10 = j9 + (((long) iArr[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i5] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return vy6.y(5, iArr, i2, 4);
    }

    public static int o(int i, int i2, int[] iArr, int i3) {
        long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = (j * j2) + (((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i3] = (int) j3;
        int i4 = i3 + 1;
        long j4 = (j3 >>> 32) + j2 + (((long) iArr[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i4] = (int) j4;
        long j5 = j4 >>> 32;
        int i5 = i3 + 2;
        long j6 = j5 + (((long) iArr[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i5] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return vy6.y(5, iArr, i3, 3);
    }

    public static int p(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        long j = ((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = 0;
        while (i < 5) {
            long j7 = j6;
            long j8 = ((long) iArr[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j9 = j;
            long j10 = (j8 * j) + (((long) iArr3[i]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i] = (int) j10;
            int i2 = i + 1;
            long j11 = (j10 >>> 32) + (j8 * j2) + (((long) iArr3[i2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i2] = (int) j11;
            int i3 = i + 2;
            long j12 = (j11 >>> 32) + (j8 * j3) + (((long) iArr3[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i3] = (int) j12;
            int i4 = i + 3;
            long j13 = (j12 >>> 32) + (j8 * j4) + (((long) iArr3[i4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i4] = (int) j13;
            int i5 = i + 4;
            long j14 = (j13 >>> 32) + (j8 * j5) + (((long) iArr3[i5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i5] = (int) j14;
            int i6 = i + 5;
            long j15 = j7 + (j14 >>> 32) + (((long) iArr3[i6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr3[i6] = (int) j15;
            j6 = j15 >>> 32;
            j = j9;
            i = i2;
            j2 = j2;
        }
        return (int) j6;
    }

    public static int q(int i, int i2, int[] iArr, int i3) {
        long j = ((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) * (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + (((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[i3] = (int) j;
        int i4 = i3 + 1;
        long j2 = (j >>> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[i4]));
        iArr[i4] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return vy6.y(5, iArr, i3, 2);
    }

    public static void r(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int i = 10;
        int i2 = 0;
        int i3 = 4;
        while (true) {
            int i4 = i3 - 1;
            long j2 = ((long) iArr[i3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = j2 * j2;
            iArr2[i - 1] = (i2 << 31) | ((int) (j3 >>> 33));
            i -= 2;
            iArr2[i] = (int) (j3 >>> 1);
            i2 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (j4 >>> 33) | (((long) (i2 << 31)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr2[0] = (int) j4;
                long j6 = ((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j7 = ((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j8 = j5 + (j6 * j);
                int i5 = (int) j8;
                iArr2[1] = (i5 << 1) | (((int) (j4 >>> 32)) & 1);
                long j9 = j7 + (j8 >>> 32);
                long j10 = ((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j11 = ((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j12 = ((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j13 = j9 + (j10 * j);
                int i6 = (int) j13;
                iArr2[2] = (i6 << 1) | (i5 >>> 31);
                long j14 = j11 + (j13 >>> 32) + (j10 * j6);
                long j15 = j12 + (j14 >>> 32);
                long j16 = j14 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j17 = ((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j18 = (((long) iArr2[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j15 >>> 32);
                long j19 = j15 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j20 = (((long) iArr2[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j18 >>> 32);
                long j21 = j18 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j22 = j16 + (j17 * j);
                int i7 = (int) j22;
                iArr2[3] = (i7 << 1) | (i6 >>> 31);
                int i8 = i7 >>> 31;
                long j23 = j19 + (j22 >>> 32) + (j17 * j6);
                long j24 = j21 + (j23 >>> 32) + (j17 * j10);
                long j25 = j23 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j26 = j20 + (j24 >>> 32);
                long j27 = j24 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j28 = ((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j29 = (((long) iArr2[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j26 >>> 32);
                long j30 = j26 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                long j31 = (((long) iArr2[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j29 >>> 32);
                long j32 = MuxerUtil.UNSIGNED_INT_MAX_VALUE & j29;
                long j33 = j25 + (j28 * j);
                int i9 = (int) j33;
                iArr2[4] = i8 | (i9 << 1);
                long j34 = j27 + (j33 >>> 32) + (j6 * j28);
                long j35 = j30 + (j34 >>> 32) + (j28 * j10);
                long j36 = j32 + (j35 >>> 32) + (j28 * j17);
                long j37 = j31 + (j36 >>> 32);
                int i10 = (int) j34;
                iArr2[5] = (i9 >>> 31) | (i10 << 1);
                int i11 = (int) j35;
                iArr2[6] = (i11 << 1) | (i10 >>> 31);
                int i12 = (int) j36;
                iArr2[7] = (i11 >>> 31) | (i12 << 1);
                int i13 = i12 >>> 31;
                int i14 = (int) j37;
                iArr2[8] = i13 | (i14 << 1);
                iArr2[9] = (i14 >>> 31) | ((iArr2[9] + ((int) (j37 >>> 32))) << 1);
                return;
            }
            i3 = i4;
        }
    }

    public static int s(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr3[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int t(int[] iArr, int[] iArr2) {
        long j = (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr2[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr2[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr2[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr2[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[4])));
        iArr2[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static BigInteger u(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i = 0; i < 5; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                cv7.c(i2, bArr, (4 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
