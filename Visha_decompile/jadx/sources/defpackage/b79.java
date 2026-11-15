package defpackage;

import java.math.BigInteger;

public class b79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));
    public static final int[] i = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};
    public int[] g;

    public b79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.g = a79.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrE = oy6.e();
        a79.a(this.g, ((b79) w43Var).g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public w43 b() {
        int[] iArrE = oy6.e();
        a79.b(this.g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrE = oy6.e();
        a79.d(((b79) w43Var).g, iArrE);
        a79.f(iArrE, this.g, iArrE);
        return new b79(iArrE);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b79) {
            return oy6.g(this.g, ((b79) obj).g);
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
        a79.d(this.g, iArrE);
        return new b79(iArrE);
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
        a79.f(this.g, ((b79) w43Var).g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public w43 m() {
        int[] iArrE = oy6.e();
        a79.h(this.g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (oy6.l(iArr) || oy6.k(iArr)) {
            return this;
        }
        int[] iArrE = oy6.e();
        a79.m(iArr, iArrE);
        a79.f(iArrE, iArr, iArrE);
        a79.m(iArrE, iArrE);
        a79.f(iArrE, iArr, iArrE);
        int[] iArrE2 = oy6.e();
        a79.m(iArrE, iArrE2);
        a79.f(iArrE2, iArr, iArrE2);
        int[] iArrE3 = oy6.e();
        a79.n(iArrE2, 4, iArrE3);
        a79.f(iArrE3, iArrE2, iArrE3);
        int[] iArrE4 = oy6.e();
        a79.n(iArrE3, 3, iArrE4);
        a79.f(iArrE4, iArrE, iArrE4);
        a79.n(iArrE4, 8, iArrE4);
        a79.f(iArrE4, iArrE3, iArrE4);
        a79.n(iArrE4, 4, iArrE3);
        a79.f(iArrE3, iArrE2, iArrE3);
        a79.n(iArrE3, 19, iArrE2);
        a79.f(iArrE2, iArrE4, iArrE2);
        int[] iArrE5 = oy6.e();
        a79.n(iArrE2, 42, iArrE5);
        a79.f(iArrE5, iArrE2, iArrE5);
        a79.n(iArrE5, 23, iArrE2);
        a79.f(iArrE2, iArrE3, iArrE2);
        a79.n(iArrE2, 84, iArrE3);
        a79.f(iArrE3, iArrE5, iArrE3);
        a79.n(iArrE3, 20, iArrE3);
        a79.f(iArrE3, iArrE4, iArrE3);
        a79.n(iArrE3, 3, iArrE3);
        a79.f(iArrE3, iArr, iArrE3);
        a79.n(iArrE3, 2, iArrE3);
        a79.f(iArrE3, iArr, iArrE3);
        a79.n(iArrE3, 4, iArrE3);
        a79.f(iArrE3, iArrE, iArrE3);
        a79.m(iArrE3, iArrE3);
        a79.m(iArrE3, iArrE5);
        if (oy6.g(iArr, iArrE5)) {
            return new b79(iArrE3);
        }
        a79.f(iArrE3, i, iArrE3);
        a79.m(iArrE3, iArrE5);
        if (oy6.g(iArr, iArrE5)) {
            return new b79(iArrE3);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrE = oy6.e();
        a79.m(this.g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrE = oy6.e();
        a79.o(this.g, ((b79) w43Var).g, iArrE);
        return new b79(iArrE);
    }

    @Override
    public boolean s() {
        return oy6.i(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return oy6.u(this.g);
    }

    public b79(int[] iArr) {
        this.g = iArr;
    }
}
