package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class o69 {
    public static final int[] a = {-21389, -2, -1, -1, -1};
    public static final int[] b = {457489321, 42778, 1, 0, 0, -42778, -3, -1, -1, -1};
    public static final int[] c = {-457489321, -42779, -2, -1, -1, 42777, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (my6.a(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && my6.i(iArr3, a))) {
            vy6.b(5, 21389, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && my6.i(iArr2, a))) {
            vy6.b(5, 21389, iArr2);
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
        if (my6.n(21389, my6.m(21389, iArr, 5, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[4] == -1 && my6.i(iArr2, a))) {
            vy6.b(5, 21389, iArr2);
        }
    }

    public static void l(int i, int[] iArr) {
        if ((i == 0 || my6.o(21389, i, iArr, 0) == 0) && !(iArr[4] == -1 && my6.i(iArr, a))) {
            return;
        }
        vy6.b(5, 21389, iArr);
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
            vy6.Q(5, 21389, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (vy6.J(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && my6.i(iArr2, a))) {
            vy6.b(5, 21389, iArr2);
        }
    }
}
