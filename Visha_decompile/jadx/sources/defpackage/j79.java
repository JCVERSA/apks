package defpackage;

import java.math.BigInteger;

public class j79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));
    public int[] g;

    public j79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.g = i79.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrI = py6.i();
        i79.a(this.g, ((j79) w43Var).g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public w43 b() {
        int[] iArrI = py6.i();
        i79.b(this.g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrI = py6.i();
        i79.d(((j79) w43Var).g, iArrI);
        i79.f(iArrI, this.g, iArrI);
        return new j79(iArrI);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j79) {
            return py6.n(this.g, ((j79) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrI = py6.i();
        i79.d(this.g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public boolean h() {
        return py6.t(this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 8) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return py6.v(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrI = py6.i();
        i79.f(this.g, ((j79) w43Var).g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public w43 m() {
        int[] iArrI = py6.i();
        i79.i(this.g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (py6.v(iArr) || py6.t(iArr)) {
            return this;
        }
        int[] iArrK = py6.k();
        int[] iArrI = py6.i();
        i79.o(iArr, iArrI, iArrK);
        i79.g(iArrI, iArr, iArrI, iArrK);
        int[] iArrI2 = py6.i();
        i79.o(iArrI, iArrI2, iArrK);
        i79.g(iArrI2, iArr, iArrI2, iArrK);
        int[] iArrI3 = py6.i();
        i79.p(iArrI2, 3, iArrI3, iArrK);
        i79.g(iArrI3, iArrI2, iArrI3, iArrK);
        i79.p(iArrI3, 3, iArrI3, iArrK);
        i79.g(iArrI3, iArrI2, iArrI3, iArrK);
        i79.p(iArrI3, 2, iArrI3, iArrK);
        i79.g(iArrI3, iArrI, iArrI3, iArrK);
        int[] iArrI4 = py6.i();
        i79.p(iArrI3, 11, iArrI4, iArrK);
        i79.g(iArrI4, iArrI3, iArrI4, iArrK);
        i79.p(iArrI4, 22, iArrI3, iArrK);
        i79.g(iArrI3, iArrI4, iArrI3, iArrK);
        int[] iArrI5 = py6.i();
        i79.p(iArrI3, 44, iArrI5, iArrK);
        i79.g(iArrI5, iArrI3, iArrI5, iArrK);
        int[] iArrI6 = py6.i();
        i79.p(iArrI5, 88, iArrI6, iArrK);
        i79.g(iArrI6, iArrI5, iArrI6, iArrK);
        i79.p(iArrI6, 44, iArrI5, iArrK);
        i79.g(iArrI5, iArrI3, iArrI5, iArrK);
        i79.p(iArrI5, 3, iArrI3, iArrK);
        i79.g(iArrI3, iArrI2, iArrI3, iArrK);
        i79.p(iArrI3, 23, iArrI3, iArrK);
        i79.g(iArrI3, iArrI4, iArrI3, iArrK);
        i79.p(iArrI3, 6, iArrI3, iArrK);
        i79.g(iArrI3, iArrI, iArrI3, iArrK);
        i79.p(iArrI3, 2, iArrI3, iArrK);
        i79.o(iArrI3, iArrI, iArrK);
        if (py6.n(iArr, iArrI)) {
            return new j79(iArrI3);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrI = py6.i();
        i79.n(this.g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrI = py6.i();
        i79.q(this.g, ((j79) w43Var).g, iArrI);
        return new j79(iArrI);
    }

    @Override
    public boolean s() {
        return py6.q(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return py6.J(this.g);
    }

    public j79(int[] iArr) {
        this.g = iArr;
    }
}
