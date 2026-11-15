package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class cy8 {
    public static final int[] a = {-1, -1, 0, -1, -1, -1, -1, -2};
    public static final int[] b = {1, 0, -2, 1, 1, -2, 0, 2, -2, -3, 3, -2, -1, -1, 0, -2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.a(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= Integer.MAX_VALUE && py6.s(iArr3, a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(8, iArr, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && py6.s(iArr2, a))) {
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
        long j4 = j2 + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1);
        iArr[2] = (int) j4;
        long j5 = (j4 >> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[3] = (int) j5;
        long j6 = j5 >> 32;
        if (j6 != 0) {
            long j7 = j6 + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[4] = (int) j7;
            long j8 = (j7 >> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[5] = (int) j8;
            long j9 = (j8 >> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[6] = (int) j9;
            j6 = j9 >> 32;
        }
        iArr[7] = (int) (j6 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) + 1);
    }

    public static int[] d(BigInteger bigInteger) {
        int[] iArrP = py6.p(bigInteger);
        if ((iArrP[7] >>> 1) >= Integer.MAX_VALUE) {
            int[] iArr = a;
            if (py6.s(iArrP, iArr)) {
                py6.I(iArr, iArrP);
            }
        }
        return iArrP;
    }

    public static void e(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrK = py6.k();
        py6.y(iArr, iArr2, iArrK);
        l(iArrK, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.C(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && vy6.u(16, iArr3, b))) {
            vy6.S(16, b, iArr3);
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            py6.H(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            py6.H(iArr3, iArr3, iArr2);
        }
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 8);
        } while (vy6.B(8, iArr, a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr[12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr[13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr[14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr[15]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = j3 + j4;
        long j10 = j6 + j7;
        long j11 = j10 + (j8 << 1);
        long j12 = j + j2 + j10;
        long j13 = j9 + j5 + j8 + j12;
        long j14 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j13 + j6 + j7 + j8;
        iArr2[0] = (int) j14;
        long j15 = (j14 >> 32) + (((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j13) - j) + j7 + j8;
        iArr2[1] = (int) j15;
        long j16 = (j15 >> 32) + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j12);
        iArr2[2] = (int) j16;
        long j17 = (j16 >> 32) + ((((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j13) - j2) - j3) + j6;
        iArr2[3] = (int) j17;
        long j18 = (j17 >> 32) + ((((((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j13) - j9) - j) + j7;
        iArr2[4] = (int) j18;
        long j19 = (j18 >> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j11 + j3;
        iArr2[5] = (int) j19;
        long j20 = (j19 >> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j4 + j7 + j8;
        iArr2[6] = (int) j20;
        long j21 = (j20 >> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) + j13 + j11 + j5;
        iArr2[7] = (int) j21;
        m((int) (j21 >> 32), iArr2);
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
            long j6 = j4 + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j2);
            iArr[2] = (int) j6;
            long j7 = (j6 >> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
            iArr[3] = (int) j7;
            long j8 = j7 >> 32;
            if (j8 != 0) {
                long j9 = j8 + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[4] = (int) j9;
                long j10 = (j9 >> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[5] = (int) j10;
                long j11 = (j10 >> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[6] = (int) j11;
                j8 = j11 >> 32;
            }
            long j12 = j8 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) + j2;
            iArr[7] = (int) j12;
            j = j12 >> 32;
        } else {
            j = 0;
        }
        if (j != 0 || ((iArr[7] >>> 1) >= Integer.MAX_VALUE && py6.s(iArr, a))) {
            c(iArr);
        }
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrK = py6.k();
        py6.F(iArr, iArrK);
        l(iArrK, iArr2);
    }

    public static void o(int[] iArr, int i, int[] iArr2) {
        int[] iArrK = py6.k();
        py6.F(iArr, iArrK);
        while (true) {
            l(iArrK, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                py6.F(iArr2, iArrK);
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
        long j4 = j2 + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[2] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1);
        iArr[3] = (int) j5;
        long j6 = j5 >> 32;
        if (j6 != 0) {
            long j7 = j6 + (((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[4] = (int) j7;
            long j8 = (j7 >> 32) + (((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[5] = (int) j8;
            long j9 = (j8 >> 32) + (((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[6] = (int) j9;
            j6 = j9 >> 32;
        }
        iArr[7] = (int) (j6 + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) - 1));
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.H(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (vy6.J(8, iArr, 0, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && py6.s(iArr2, a))) {
            c(iArr2);
        }
    }
}
