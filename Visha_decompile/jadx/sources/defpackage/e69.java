package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class e69 {
    public static final int[] a = {-1, -1, -1, -3};
    public static final int[] b = {1, 0, 0, 4, -2, -1, 3, -4};
    public static final int[] c = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ly6.a(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && ly6.n(iArr3, a))) {
            c(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && ly6.n(iArr2, a))) {
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
            long j4 = (j3 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        iArr[3] = (int) (j2 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) + 2);
    }

    public static int[] d(BigInteger bigInteger) {
        int[] iArrL = ly6.l(bigInteger);
        if ((iArrL[3] >>> 1) >= 2147483646) {
            int[] iArr = a;
            if (ly6.n(iArrL, iArr)) {
                ly6.w(iArr, iArrL);
            }
        }
        return iArrL;
    }

    public static void e(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrH = ly6.h();
        ly6.s(iArr, iArr2, iArrH);
        l(iArrH, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ly6.t(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && py6.s(iArr3, b))) {
            int[] iArr4 = c;
            vy6.e(iArr4.length, iArr4, iArr3);
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            ly6.v(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            ly6.v(iArr3, iArr3, iArr2);
        }
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[16];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 4);
        } while (vy6.B(4, iArr, a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr[4]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = ((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = ((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = ((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = j4 + j8;
        long j10 = j7 + (j8 << 1);
        long j11 = j3 + j10;
        long j12 = j6 + (j10 << 1);
        long j13 = j2 + j12;
        long j14 = j5 + (j12 << 1);
        long j15 = j + j14;
        iArr2[0] = (int) j15;
        long j16 = j13 + (j15 >>> 32);
        iArr2[1] = (int) j16;
        long j17 = j11 + (j16 >>> 32);
        iArr2[2] = (int) j17;
        long j18 = j9 + (j14 << 1) + (j17 >>> 32);
        iArr2[3] = (int) j18;
        m((int) (j18 >>> 32), iArr2);
    }

    public static void m(int i, int[] iArr) {
        while (i != 0) {
            long j = ((long) i) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            long j2 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j;
            iArr[0] = (int) j2;
            long j3 = j2 >> 32;
            if (j3 != 0) {
                long j4 = j3 + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[1] = (int) j4;
                long j5 = (j4 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                iArr[2] = (int) j5;
                j3 = j5 >> 32;
            }
            long j6 = j3 + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) + (j << 1);
            iArr[3] = (int) j6;
            i = (int) (j6 >> 32);
        }
        if ((iArr[3] >>> 1) < 2147483646 || !ly6.n(iArr, a)) {
            return;
        }
        c(iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrH = ly6.h();
        ly6.u(iArr, iArrH);
        l(iArrH, iArr2);
    }

    public static void o(int[] iArr, int i, int[] iArr2) {
        int[] iArrH = ly6.h();
        ly6.u(iArr, iArrH);
        while (true) {
            l(iArrH, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                ly6.u(iArr2, iArrH);
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
            long j4 = (j3 >> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        iArr[3] = (int) (j2 + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[3])) - 2));
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ly6.v(iArr, iArr2, iArr3) != 0) {
            p(iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (vy6.J(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && ly6.n(iArr2, a))) {
            c(iArr2);
        }
    }
}
