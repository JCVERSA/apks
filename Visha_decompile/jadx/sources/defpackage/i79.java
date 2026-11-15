package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class i79 {
    public static final int[] a = {-977, -2, -1, -1, -1, -1, -1, -1};
    public static final int[] b = {954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};
    public static final int[] c = {-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.a(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && py6.s(iArr3, a))) {
            vy6.b(8, 977, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && py6.s(iArr2, a))) {
            vy6.b(8, 977, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] iArrP = py6.p(bigInteger);
        if (iArrP[7] == -1) {
            int[] iArr = a;
            if (py6.s(iArrP, iArr)) {
                py6.I(iArr, iArrP);
            }
        }
        return iArrP;
    }

    public static void d(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrK = py6.k();
        py6.y(iArr, iArr2, iArrK);
        l(iArrK, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        py6.y(iArr, iArr2, iArr4);
        l(iArr4, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.C(iArr, iArr2, iArr3) != 0 || (iArr3[15] == -1 && vy6.u(16, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(16, iArr3, iArr4.length);
            }
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
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
        } while (e(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        if (py6.A(977, py6.z(977, iArr, 8, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[7] == -1 && py6.s(iArr2, a))) {
            vy6.b(8, 977, iArr2);
        }
    }

    public static void m(int i, int[] iArr) {
        if ((i == 0 || py6.B(977, i, iArr, 0) == 0) && !(iArr[7] == -1 && py6.s(iArr, a))) {
            return;
        }
        vy6.b(8, 977, iArr);
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrK = py6.k();
        py6.F(iArr, iArrK);
        l(iArrK, iArr2);
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        py6.F(iArr, iArr3);
        l(iArr3, iArr2);
    }

    public static void p(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        py6.F(iArr, iArr3);
        while (true) {
            l(iArr3, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                py6.F(iArr2, iArr3);
            }
        }
    }

    public static void q(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.H(iArr, iArr2, iArr3) != 0) {
            vy6.Q(8, 977, iArr3);
        }
    }

    public static void r(int[] iArr, int[] iArr2) {
        if (vy6.J(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && py6.s(iArr2, a))) {
            vy6.b(8, 977, iArr2);
        }
    }
}
