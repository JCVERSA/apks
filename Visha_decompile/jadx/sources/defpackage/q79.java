package defpackage;

import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class q79 {
    public static final int[] a = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};
    public static final int[] b = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};
    public static final int[] c = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (vy6.a(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && vy6.u(12, iArr3, a))) {
            d(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2, int[] iArr3) {
        if (vy6.a(24, iArr, iArr2, iArr3) != 0 || (iArr3[23] == -1 && vy6.u(24, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(24, iArr3, iArr4.length);
            }
        }
    }

    public static void c(int[] iArr, int[] iArr2) {
        if (vy6.w(12, iArr, iArr2) != 0 || (iArr2[11] == -1 && vy6.u(12, iArr2, a))) {
            d(iArr2);
        }
    }

    public static void d(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1);
        iArr[1] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j3 = j4 >> 32;
        }
        long j5 = j3 + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[3] = (int) j5;
        long j6 = (j5 >> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[4])) + 1;
        iArr[4] = (int) j6;
        if ((j6 >> 32) != 0) {
            vy6.x(12, iArr, 5);
        }
    }

    public static int[] e(BigInteger bigInteger) {
        int[] iArrQ = vy6.q(RendererCapabilities.DECODER_SUPPORT_MASK, bigInteger);
        if (iArrQ[11] == -1) {
            int[] iArr = a;
            if (vy6.u(12, iArrQ, iArr)) {
                vy6.S(12, iArr, iArrQ);
            }
        }
        return iArrQ;
    }

    public static void f(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 12; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrL = vy6.l(24);
        ry6.a(iArr, iArr2, iArrL);
        m(iArrL, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        ry6.a(iArr, iArr2, iArr4);
        m(iArr4, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            vy6.P(12, a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            vy6.P(12, iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[48];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 12);
        } while (vy6.B(12, iArr, a) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[16]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[17]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[18]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[19]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr[20]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr[21]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr[22]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr[23]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = ((((long) iArr[12]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j5) - 1;
        long j10 = (((long) iArr[13]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j7;
        long j11 = (((long) iArr[14]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j7 + j8;
        long j12 = (((long) iArr[15]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j8;
        long j13 = j2 + j6;
        long j14 = j6 - j8;
        long j15 = j7 - j8;
        long j16 = j9 + j14;
        long j17 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j16;
        iArr2[0] = (int) j17;
        long j18 = (j17 >> 32) + (((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j8) - j9) + j10;
        iArr2[1] = (int) j18;
        long j19 = (j18 >> 32) + (((((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j6) - j10) + j11;
        iArr2[2] = (int) j19;
        long j20 = (j19 >> 32) + ((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j11) + j12 + j16;
        iArr2[3] = (int) j20;
        long j21 = (j20 >> 32) + (((((((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j) + j6) + j10) - j12) + j16;
        iArr2[4] = (int) j21;
        long j22 = (j21 >> 32) + ((((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j) + j10 + j11 + j13;
        iArr2[5] = (int) j22;
        long j23 = (j22 >> 32) + (((((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j3) - j2) + j11 + j12;
        iArr2[6] = (int) j23;
        long j24 = (j23 >> 32) + ((((((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j) + j4) - j3) + j12;
        iArr2[7] = (int) j24;
        long j25 = (j24 >> 32) + (((((((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j) + j2) + j5) - j4);
        iArr2[8] = (int) j25;
        long j26 = (j25 >> 32) + (((((long) iArr[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j3) - j5) + j13;
        iArr2[9] = (int) j26;
        long j27 = (j26 >> 32) + ((((((long) iArr[10]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j3) + j4) - j14) + j15;
        iArr2[10] = (int) j27;
        long j28 = (j27 >> 32) + ((((((long) iArr[11]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j4) + j5) - j15);
        iArr2[11] = (int) j28;
        n((int) ((j28 >> 32) + 1), iArr2);
    }

    public static void n(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j3 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
            iArr[0] = (int) j3;
            long j4 = (j3 >> 32) + ((((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - j2);
            iArr[1] = (int) j4;
            long j5 = j4 >> 32;
            if (j5 != 0) {
                long j6 = j5 + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[2] = (int) j6;
                j5 = j6 >> 32;
            }
            long j7 = j5 + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2;
            iArr[3] = (int) j7;
            long j8 = (j7 >> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[4])) + j2;
            iArr[4] = (int) j8;
            j = j8 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || vy6.x(12, iArr, 5) == 0) && !(iArr[11] == -1 && vy6.u(12, iArr, a))) {
            return;
        }
        d(iArr);
    }

    public static void o(int[] iArr, int[] iArr2) {
        int[] iArrL = vy6.l(24);
        ry6.b(iArr, iArrL);
        m(iArrL, iArr2);
    }

    public static void p(int[] iArr, int[] iArr2, int[] iArr3) {
        ry6.b(iArr, iArr3);
        m(iArr3, iArr2);
    }

    public static void q(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        ry6.b(iArr, iArr3);
        while (true) {
            m(iArr3, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                ry6.b(iArr2, iArr3);
            }
        }
    }

    public static void r(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1;
        iArr[0] = (int) j;
        long j2 = (j >> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 1;
        iArr[1] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j3 = j4 >> 32;
        }
        long j5 = j3 + ((((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 1);
        iArr[3] = (int) j5;
        long j6 = (j5 >> 32) + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[4])) - 1);
        iArr[4] = (int) j6;
        if ((j6 >> 32) != 0) {
            vy6.o(12, iArr, 5);
        }
    }

    public static void s(int[] iArr, int[] iArr2, int[] iArr3) {
        if (vy6.P(12, iArr, iArr2, iArr3) != 0) {
            r(iArr3);
        }
    }

    public static void t(int[] iArr, int[] iArr2) {
        if (vy6.J(12, iArr, 0, iArr2) != 0 || (iArr2[11] == -1 && vy6.u(12, iArr2, a))) {
            d(iArr2);
        }
    }
}
