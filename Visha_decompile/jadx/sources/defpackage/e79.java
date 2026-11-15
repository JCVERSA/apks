package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class e79 {
    public static final int[] a = {1, 0, 0, -1, -1, -1, -1};
    public static final int[] b = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};
    public static final int[] c = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && oy6.j(iArr3, a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && oy6.j(iArr2, a))) {
            c(iArr2);
        }
    }

    public static void c(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[1] = (int) j3;
            long j4 = (j3 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        long j5 = j2 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) + 1;
        iArr[3] = (int) j5;
        if ((j5 >> 32) != 0) {
            vy6.x(7, iArr, 4);
        }
    }

    public static int[] d(BigInteger bigInteger) {
        int[] iArrH = oy6.h(bigInteger);
        if (iArrH[6] == -1) {
            int[] iArr = a;
            if (oy6.j(iArrH, iArr)) {
                oy6.t(iArr, iArrH);
            }
        }
        return iArrH;
    }

    public static void e(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 7; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrF = oy6.f();
        oy6.m(iArr, iArr2, iArrF);
        l(iArrF, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.q(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && vy6.u(14, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(14, iArr3, iArr4.length);
            }
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            oy6.s(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            oy6.s(iArr3, iArr3, iArr2);
        }
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 7);
        } while (vy6.B(7, iArr, a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2) - 1;
        long j6 = (((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j3;
        long j7 = (((long) iArr[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j4;
        long j8 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j5;
        long j9 = j8 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = (j8 >> 32) + ((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j6);
        int i = (int) j10;
        iArr2[1] = i;
        long j11 = (j10 >> 32) + ((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j7);
        int i2 = (int) j11;
        iArr2[2] = i2;
        long j12 = (j11 >> 32) + (((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j5) - j);
        long j13 = j12 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j14 = (j12 >> 32) + (((((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j6) - j2);
        iArr2[4] = (int) j14;
        long j15 = (j14 >> 32) + (((((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j7) - j3);
        iArr2[5] = (int) j15;
        long j16 = (j15 >> 32) + (((((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j) - j4);
        iArr2[6] = (int) j16;
        long j17 = (j16 >> 32) + 1;
        long j18 = j13 + j17;
        long j19 = j9 - j17;
        iArr2[0] = (int) j19;
        long j20 = j19 >> 32;
        if (j20 != 0) {
            long j21 = j20 + (((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr2[1] = (int) j21;
            long j22 = (j21 >> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i2));
            iArr2[2] = (int) j22;
            j18 += j22 >> 32;
        }
        iArr2[3] = (int) j18;
        if (((j18 >> 32) == 0 || vy6.x(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && oy6.j(iArr2, a))) {
            return;
        }
        c(iArr2);
    }

    public static void m(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j2;
            iArr[0] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[1] = (int) j5;
                long j6 = (j5 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[2] = (int) j6;
                j4 = j6 >> 32;
            }
            long j7 = j4 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) + j2;
            iArr[3] = (int) j7;
            j = j7 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || vy6.x(7, iArr, 4) == 0) && !(iArr[6] == -1 && oy6.j(iArr, a))) {
            return;
        }
        c(iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrF = oy6.f();
        oy6.r(iArr, iArrF);
        l(iArrF, iArr2);
    }

    public static void o(int[] iArr, int i, int[] iArr2) {
        int[] iArrF = oy6.f();
        oy6.r(iArr, iArrF);
        while (true) {
            l(iArrF, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                oy6.r(iArr2, iArrF);
            }
        }
    }

    public static void p(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[1] = (int) j3;
            long j4 = (j3 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        long j5 = j2 + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) - 1);
        iArr[3] = (int) j5;
        if ((j5 >> 32) != 0) {
            vy6.o(7, iArr, 4);
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.s(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (vy6.J(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && oy6.j(iArr2, a))) {
            c(iArr2);
        }
    }
}
