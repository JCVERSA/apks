package defpackage;

import androidx.core.app.FrameMetricsAggregator;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class u79 {
    public static final int[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, FrameMetricsAggregator.EVERY_DURATION};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int iA = vy6.a(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (iA > 511 || (iA == 511 && vy6.p(16, iArr3, a))) {
            iA = (iA + vy6.v(16, iArr3)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr3[16] = iA;
    }

    public static void b(int[] iArr, int[] iArr2) {
        int iW = vy6.w(16, iArr, iArr2) + iArr[16];
        if (iW > 511 || (iW == 511 && vy6.p(16, iArr2, a))) {
            iW = (iW + vy6.v(16, iArr2)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr2[16] = iW;
    }

    public static int[] c(BigInteger bigInteger) {
        int[] iArrQ = vy6.q(521, bigInteger);
        if (vy6.p(17, iArrQ, a)) {
            vy6.V(17, iArrQ);
        }
        return iArrQ;
    }

    public static void d(int[] iArr, int[] iArr2, int[] iArr3) {
        ty6.a(iArr, iArr2, iArr3);
        int i = iArr[16];
        int i2 = iArr2[16];
        iArr3[32] = vy6.C(16, i, iArr2, i2, iArr, iArr3, 16) + (i * i2);
    }

    public static void e(int[] iArr, int[] iArr2) {
        ty6.b(iArr, iArr2);
        int i = iArr[16];
        iArr2[32] = vy6.D(16, i << 1, iArr, 0, iArr2, 16) + (i * i);
    }

    public static void f(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int g(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 17; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrL = vy6.l(33);
        d(iArr, iArr2, iArrL);
        m(iArrL, iArr3);
    }

    public static void i(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        d(iArr, iArr2, iArr4);
        m(iArr4, iArr3);
    }

    public static void j(int[] iArr, int[] iArr2) {
        if (g(iArr) == 0) {
            vy6.P(17, a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            vy6.P(17, iArr3, iArr3, iArr2);
        }
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[68];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 17);
            iArr[16] = iArr[16] & FrameMetricsAggregator.EVERY_DURATION;
        } while (vy6.B(17, iArr, a) == 0);
    }

    public static void l(SecureRandom secureRandom, int[] iArr) {
        do {
            k(secureRandom, iArr);
        } while (g(iArr) != 0);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int i = iArr[32];
        int iG = (vy6.G(16, iArr, 16, 9, i, iArr2, 0) >>> 23) + (i >>> 9) + vy6.e(16, iArr, iArr2);
        if (iG > 511 || (iG == 511 && vy6.p(16, iArr2, a))) {
            iG = (iG + vy6.v(16, iArr2)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr2[16] = iG;
    }

    public static void n(int[] iArr) {
        int i = iArr[16];
        int iG = vy6.g(16, i >>> 9, iArr) + (i & FrameMetricsAggregator.EVERY_DURATION);
        if (iG > 511 || (iG == 511 && vy6.p(16, iArr, a))) {
            iG = (iG + vy6.v(16, iArr)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr[16] = iG;
    }

    public static void o(int[] iArr, int[] iArr2) {
        int[] iArrL = vy6.l(33);
        e(iArr, iArrL);
        m(iArrL, iArr2);
    }

    public static void p(int[] iArr, int[] iArr2, int[] iArr3) {
        e(iArr, iArr3);
        m(iArr3, iArr2);
    }

    public static void q(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        e(iArr, iArr3);
        while (true) {
            m(iArr3, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                e(iArr2, iArr3);
            }
        }
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        int iP = (vy6.P(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (iP < 0) {
            iP = (iP + vy6.n(16, iArr3)) & FrameMetricsAggregator.EVERY_DURATION;
        }
        iArr3[16] = iP;
    }

    public static void s(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = (vy6.J(16, iArr, i << 23, iArr2) | (i << 1)) & FrameMetricsAggregator.EVERY_DURATION;
    }
}
