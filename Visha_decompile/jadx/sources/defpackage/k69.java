package defpackage;

import androidx.media3.common.C;
import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class k69 {
    public static final int[] a = {Integer.MAX_VALUE, -1, -1, -1, -1};
    public static final int[] b = {1, 1073741825, 0, 0, 0, -2, -2, -1, -1, -1};
    public static final int[] c = {-1, -1073741826, -1, -1, -1, 1, 1};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (my6.a(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && my6.i(iArr3, a))) {
            vy6.g(5, C.RATE_UNSET_INT, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && my6.i(iArr2, a))) {
            vy6.g(5, C.RATE_UNSET_INT, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] iArrG = my6.g(bigInteger);
        if (iArrG[4] == -1) {
            int[] iArr = a;
            if (my6.i(iArrG, iArr)) {
                my6.t(iArr, iArrG);
            }
        }
        return iArrG;
    }

    public static void d(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrE = my6.e();
        my6.l(iArr, iArr2, iArrE);
        k(iArrE, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (my6.p(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && vy6.u(10, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(10, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            my6.s(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            my6.s(iArr3, iArr3, iArr2);
        }
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[20];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 5);
        } while (vy6.B(5, iArr, a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[5]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j2 = ((long) iArr[6]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j3 = ((long) iArr[7]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j4 = ((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j5 = ((long) iArr[9]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j6 = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j + (j << 31);
        iArr2[0] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j2 + (j2 << 31);
        iArr2[1] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[2]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j3 + (j3 << 31);
        iArr2[2] = (int) j8;
        long j9 = (j8 >>> 32) + (((long) iArr[3]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + j4 + (j4 << 31);
        iArr2[3] = (int) j9;
        long j10 = (j9 >>> 32) + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[4])) + j5 + (j5 << 31);
        iArr2[4] = (int) j10;
        l((int) (j10 >>> 32), iArr2);
    }

    public static void l(int i, int[] iArr) {
        if ((i == 0 || my6.q(C.RATE_UNSET_INT, i, iArr, 0) == 0) && !(iArr[4] == -1 && my6.i(iArr, a))) {
            return;
        }
        vy6.g(5, C.RATE_UNSET_INT, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] iArrE = my6.e();
        my6.r(iArr, iArrE);
        k(iArrE, iArr2);
    }

    public static void n(int[] iArr, int i, int[] iArr2) {
        int[] iArrE = my6.e();
        my6.r(iArr, iArrE);
        while (true) {
            k(iArrE, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                my6.r(iArr2, iArrE);
            }
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (my6.s(iArr, iArr2, iArr3) != 0) {
            vy6.T(5, C.RATE_UNSET_INT, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (vy6.J(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && my6.i(iArr2, a))) {
            vy6.g(5, C.RATE_UNSET_INT, iArr2);
        }
    }
}
