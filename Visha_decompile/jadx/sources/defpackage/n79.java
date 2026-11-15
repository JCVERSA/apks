package defpackage;

import java.math.BigInteger;

public class n79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));
    public int[] g;

    public n79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.g = m79.d(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrI = py6.i();
        m79.a(this.g, ((n79) w43Var).g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public w43 b() {
        int[] iArrI = py6.i();
        m79.b(this.g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrI = py6.i();
        m79.e(((n79) w43Var).g, iArrI);
        m79.g(iArrI, this.g, iArrI);
        return new n79(iArrI);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n79) {
            return py6.n(this.g, ((n79) obj).g);
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
        m79.e(this.g, iArrI);
        return new n79(iArrI);
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
        m79.g(this.g, ((n79) w43Var).g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public w43 m() {
        int[] iArrI = py6.i();
        m79.j(this.g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (py6.v(iArr) || py6.t(iArr)) {
            return this;
        }
        int[] iArrK = py6.k();
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        m79.p(iArr, iArrI, iArrK);
        m79.h(iArrI, iArr, iArrI, iArrK);
        m79.q(iArrI, 2, iArrI2, iArrK);
        m79.h(iArrI2, iArrI, iArrI2, iArrK);
        m79.q(iArrI2, 4, iArrI, iArrK);
        m79.h(iArrI, iArrI2, iArrI, iArrK);
        m79.q(iArrI, 8, iArrI2, iArrK);
        m79.h(iArrI2, iArrI, iArrI2, iArrK);
        m79.q(iArrI2, 16, iArrI, iArrK);
        m79.h(iArrI, iArrI2, iArrI, iArrK);
        m79.q(iArrI, 32, iArrI, iArrK);
        m79.h(iArrI, iArr, iArrI, iArrK);
        m79.q(iArrI, 96, iArrI, iArrK);
        m79.h(iArrI, iArr, iArrI, iArrK);
        m79.q(iArrI, 94, iArrI, iArrK);
        m79.p(iArrI, iArrI2, iArrK);
        if (py6.n(iArr, iArrI2)) {
            return new n79(iArrI);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrI = py6.i();
        m79.o(this.g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrI = py6.i();
        m79.s(this.g, ((n79) w43Var).g, iArrI);
        return new n79(iArrI);
    }

    @Override
    public boolean s() {
        return py6.q(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return py6.J(this.g);
    }

    public n79(int[] iArr) {
        this.g = iArr;
    }
}
