package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class w69 {
    public static final int[] a = {-1, -1, -2, -1, -1, -1};
    public static final int[] b = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};
    public static final int[] c = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && ny6.r(iArr3, a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && ny6.r(iArr2, a))) {
            c(iArr2);
        }
    }

    public static void c(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[2])) + 1;
        iArr[2] = (int) j4;
        if ((j4 >> 32) != 0) {
            vy6.x(6, iArr, 3);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] iArrO = ny6.o(bigInteger);
        if (iArrO[5] == -1) {
            int[] iArr = a;
            if (ny6.r(iArrO, iArr)) {
                ny6.G(iArr, iArrO);
            }
        }
        return iArrO;
    }

    public static void e(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrJ = ny6.j();
        ny6.x(iArr, iArr2, iArrJ);
        l(iArrJ, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.B(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && vy6.u(12, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(12, iArr3, iArr4.length);
            }
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            ny6.F(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            ny6.F(iArr3, iArr3, iArr2);
        }
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 6);
        } while (vy6.B(6, iArr, a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = (((long) iArr[10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j;
        long j6 = (((long) iArr[11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
        long j7 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j5;
        int i = (int) j7;
        long j8 = (j7 >> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j6;
        int i2 = (int) j8;
        iArr2[1] = i2;
        long j9 = j5 + j3;
        long j10 = j6 + j4;
        long j11 = (j8 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j9;
        long j12 = j11 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j13 = (j11 >> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j10;
        iArr2[3] = (int) j13;
        long j14 = j10 - j2;
        long j15 = (j13 >> 32) + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j9 - j);
        iArr2[4] = (int) j15;
        long j16 = (j15 >> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j14;
        iArr2[5] = (int) j16;
        long j17 = j16 >> 32;
        long j18 = j12 + j17;
        long j19 = j17 + (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr2[0] = (int) j19;
        long j20 = j19 >> 32;
        if (j20 != 0) {
            long j21 = j20 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2));
            iArr2[1] = (int) j21;
            j18 += j21 >> 32;
        }
        iArr2[2] = (int) j18;
        if (((j18 >> 32) == 0 || vy6.x(6, iArr2, 3) == 0) && !(iArr2[5] == -1 && ny6.r(iArr2, a))) {
            return;
        }
        c(iArr2);
    }

    public static void m(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
            iArr[0] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[1] = (int) j5;
                j4 = j5 >> 32;
            }
            long j6 = j4 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[2])) + j2;
            iArr[2] = (int) j6;
            j = j6 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || vy6.x(6, iArr, 3) == 0) && !(iArr[5] == -1 && ny6.r(iArr, a))) {
            return;
        }
        c(iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrJ = ny6.j();
        ny6.D(iArr, iArrJ);
        l(iArrJ, iArr2);
    }

    public static void o(int[] iArr, int i, int[] iArr2) {
        int[] iArrJ = ny6.j();
        ny6.D(iArr, iArrJ);
        while (true) {
            l(iArrJ, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                ny6.D(iArr2, iArrJ);
            }
        }
    }

    public static void p(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[2])) - 1);
        iArr[2] = (int) j4;
        if ((j4 >> 32) != 0) {
            vy6.o(6, iArr, 3);
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.F(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (vy6.J(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && ny6.r(iArr2, a))) {
            c(iArr2);
        }
    }
}
