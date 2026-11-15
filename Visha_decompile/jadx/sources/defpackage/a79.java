package defpackage;

import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class a79 {
    public static final int[] a = {-6803, -2, -1, -1, -1, -1, -1};
    public static final int[] b = {46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};
    public static final int[] c = {-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.a(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && oy6.j(iArr3, a))) {
            vy6.b(7, 6803, iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        if (vy6.w(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && oy6.j(iArr2, a))) {
            vy6.b(7, 6803, iArr2);
        }
    }

    public static int[] c(BigInteger bigInteger) {
        int[] iArrH = oy6.h(bigInteger);
        if (iArrH[6] == -1 && oy6.j(iArrH, a)) {
            vy6.b(7, 6803, iArrH);
        }
        return iArrH;
    }

    public static void d(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int e(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 7; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void f(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrF = oy6.f();
        oy6.m(iArr, iArr2, iArrF);
        k(iArrF, iArr3);
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.q(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && vy6.u(14, iArr3, b))) {
            int[] iArr4 = c;
            if (vy6.e(iArr4.length, iArr4, iArr3) != 0) {
                vy6.x(14, iArr3, iArr4.length);
            }
        }
    }

    public static void h(int[] iArr, int[] iArr2) {
        if (e(iArr) == 0) {
            oy6.s(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            oy6.s(iArr3, iArr3, iArr2);
        }
    }

    public static void i(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 7);
        } while (vy6.B(7, iArr, a) == 0);
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        do {
            i(secureRandom, iArr);
        } while (e(iArr) != 0);
    }

    public static void k(int[] iArr, int[] iArr2) {
        if (oy6.o(6803, oy6.n(6803, iArr, 7, iArr, 0, iArr2, 0), iArr2, 0) != 0 || (iArr2[6] == -1 && oy6.j(iArr2, a))) {
            vy6.b(7, 6803, iArr2);
        }
    }

    public static void l(int i, int[] iArr) {
        if ((i == 0 || oy6.p(6803, i, iArr, 0) == 0) && !(iArr[6] == -1 && oy6.j(iArr, a))) {
            return;
        }
        vy6.b(7, 6803, iArr);
    }

    public static void m(int[] iArr, int[] iArr2) {
        int[] iArrF = oy6.f();
        oy6.r(iArr, iArrF);
        k(iArrF, iArr2);
    }

    public static void n(int[] iArr, int i, int[] iArr2) {
        int[] iArrF = oy6.f();
        oy6.r(iArr, iArrF);
        while (true) {
            k(iArrF, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                oy6.r(iArr2, iArrF);
            }
        }
    }

    public static void o(int[] iArr, int[] iArr2, int[] iArr3) {
        if (oy6.s(iArr, iArr2, iArr3) != 0) {
            vy6.Q(7, 6803, iArr3);
        }
    }

    public static void p(int[] iArr, int[] iArr2) {
        if (vy6.J(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && oy6.j(iArr2, a))) {
            vy6.b(7, 6803, iArr2);
        }
    }
}
