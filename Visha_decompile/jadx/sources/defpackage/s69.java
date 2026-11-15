package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class s69 {
    public static final int[] a = {-4553, -2, -1, -1, -1, -1};
    public static final int[] b = {20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1};
    public static final int[] c = {-20729809, -9107, -2, -1, -1, -1, 9105, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.a(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && ny6.r(iArr3, a))) {
            vy6.b(6, 4553, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && ny6.r(iArr2, a))) {
            vy6.b(6, 4553, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] iArrO = ny6.o(bigInteger);
        if (iArrO[5] == -1) {
            int[] iArr = a;
            if (ny6.r(iArrO, iArr)) {
                ny6.G(iArr, iArrO);
            }
        }
        return iArrO;
    }

    public static void d(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrJ = ny6.j();
        ny6.x(iArr, iArr2, iArrJ);
        k(iArrJ, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.B(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && vy6.u(12, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(12, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            ny6.F(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            ny6.F(iArr3, iArr3, iArr2);
        }
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 6);
        } while (vy6.B(6, iArr, a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (ny6.z(4553, ny6.y(4553, iArr, 6, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[5] == -1 && ny6.r(iArr2, a))) {
            vy6.b(6, 4553, iArr2);
        }
    }

    public static void l(int i, int[] iArr) {
        if ((i == 0 || ny6.A(4553, i, iArr, 0) == 0) && !(iArr[5] == -1 && ny6.r(iArr, a))) {
            return;
        }
        vy6.b(6, 4553, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] iArrJ = ny6.j();
        ny6.D(iArr, iArrJ);
        k(iArrJ, iArr2);
    }

    public static void n(int[] iArr, int i, int[] iArr2) {
        int[] iArrJ = ny6.j();
        ny6.D(iArr, iArrJ);
        while (true) {
            k(iArrJ, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                ny6.D(iArr2, iArrJ);
            }
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (ny6.F(iArr, iArr2, iArr3) != 0) {
            vy6.Q(6, 4553, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (vy6.J(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && ny6.r(iArr2, a))) {
            vy6.b(6, 4553, iArr2);
        }
    }
}
