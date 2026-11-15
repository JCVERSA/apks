package defpackage;

import java.math.BigInteger;

public class f79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"));
    public int[] g;

    public f79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.g = e79.d(bigInteger);
    }

    public static void u(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        e79.g(iArr5, iArr3, iArr7);
        e79.g(iArr7, iArr, iArr7);
        e79.g(iArr4, iArr2, iArr6);
        e79.a(iArr6, iArr7, iArr6);
        e79.g(iArr4, iArr3, iArr7);
        oy6.d(iArr6, iArr4);
        e79.g(iArr5, iArr2, iArr5);
        e79.a(iArr5, iArr7, iArr5);
        e79.n(iArr5, iArr6);
        e79.g(iArr6, iArr, iArr6);
    }

    public static void v(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        oy6.d(iArr, iArr4);
        int[] iArrE = oy6.e();
        int[] iArrE2 = oy6.e();
        for (int i = 0; i < 7; i++) {
            oy6.d(iArr2, iArrE);
            oy6.d(iArr3, iArrE2);
            int i2 = 1 << i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    w(iArr2, iArr3, iArr4, iArr5);
                }
            }
            u(iArr, iArrE, iArrE2, iArr2, iArr3, iArr4, iArr5);
        }
    }

    public static void w(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        e79.g(iArr2, iArr, iArr2);
        e79.r(iArr2, iArr2);
        e79.n(iArr, iArr4);
        e79.a(iArr3, iArr4, iArr);
        e79.g(iArr3, iArr4, iArr3);
        e79.m(vy6.L(7, iArr3, 2, 0), iArr3);
    }

    public static boolean x(int[] iArr) {
        int[] iArrE = oy6.e();
        int[] iArrE2 = oy6.e();
        oy6.d(iArr, iArrE);
        for (int i = 0; i < 7; i++) {
            oy6.d(iArrE, iArrE2);
            e79.o(iArrE, 1 << i, iArrE);
            e79.g(iArrE, iArrE2, iArrE);
        }
        e79.o(iArrE, 95, iArrE);
        return oy6.k(iArrE);
    }

    public static boolean y(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrE = oy6.e();
        oy6.d(iArr2, iArrE);
        int[] iArrE2 = oy6.e();
        iArrE2[0] = 1;
        int[] iArrE3 = oy6.e();
        v(iArr, iArrE, iArrE2, iArrE3, iArr3);
        int[] iArrE4 = oy6.e();
        int[] iArrE5 = oy6.e();
        for (int i = 1; i < 96; i++) {
            oy6.d(iArrE, iArrE4);
            oy6.d(iArrE2, iArrE5);
            w(iArrE, iArrE2, iArrE3, iArr3);
            if (oy6.l(iArrE)) {
                e79.e(iArrE5, iArr3);
                e79.g(iArr3, iArrE4, iArr3);
                return true;
            }
        }
        return false;
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrE = oy6.e();
        e79.a(this.g, ((f79) w43Var).g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public w43 b() {
        int[] iArrE = oy6.e();
        e79.b(this.g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrE = oy6.e();
        e79.e(((f79) w43Var).g, iArrE);
        e79.g(iArrE, this.g, iArrE);
        return new f79(iArrE);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f79) {
            return oy6.g(this.g, ((f79) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrE = oy6.e();
        e79.e(this.g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public boolean h() {
        return oy6.k(this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 7) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return oy6.l(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrE = oy6.e();
        e79.g(this.g, ((f79) w43Var).g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public w43 m() {
        int[] iArrE = oy6.e();
        e79.i(this.g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (oy6.l(iArr) || oy6.k(iArr)) {
            return this;
        }
        int[] iArrE = oy6.e();
        e79.i(iArr, iArrE);
        int[] iArrR = cq6.r(e79.a);
        int[] iArrE2 = oy6.e();
        if (!x(iArr)) {
            return null;
        }
        while (!y(iArrE, iArrR, iArrE2)) {
            e79.b(iArrR, iArrR);
        }
        e79.n(iArrE2, iArrR);
        if (oy6.g(iArr, iArrR)) {
            return new f79(iArrE2);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrE = oy6.e();
        e79.n(this.g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrE = oy6.e();
        e79.q(this.g, ((f79) w43Var).g, iArrE);
        return new f79(iArrE);
    }

    @Override
    public boolean s() {
        return oy6.i(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return oy6.u(this.g);
    }

    public f79(int[] iArr) {
        this.g = iArr;
    }
}
