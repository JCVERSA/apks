package defpackage;

import java.math.BigInteger;

public class dy8 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"));
    public int[] g;

    public dy8(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SM2P256V1FieldElement");
        }
        this.g = cy8.d(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrI = py6.i();
        cy8.a(this.g, ((dy8) w43Var).g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public w43 b() {
        int[] iArrI = py6.i();
        cy8.b(this.g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrI = py6.i();
        cy8.e(((dy8) w43Var).g, iArrI);
        cy8.g(iArrI, this.g, iArrI);
        return new dy8(iArrI);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof dy8) {
            return py6.n(this.g, ((dy8) obj).g);
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
        cy8.e(this.g, iArrI);
        return new dy8(iArrI);
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
        cy8.g(this.g, ((dy8) w43Var).g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public w43 m() {
        int[] iArrI = py6.i();
        cy8.i(this.g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (py6.v(iArr) || py6.t(iArr)) {
            return this;
        }
        int[] iArrI = py6.i();
        cy8.n(iArr, iArrI);
        cy8.g(iArrI, iArr, iArrI);
        int[] iArrI2 = py6.i();
        cy8.o(iArrI, 2, iArrI2);
        cy8.g(iArrI2, iArrI, iArrI2);
        int[] iArrI3 = py6.i();
        cy8.o(iArrI2, 2, iArrI3);
        cy8.g(iArrI3, iArrI, iArrI3);
        cy8.o(iArrI3, 6, iArrI);
        cy8.g(iArrI, iArrI3, iArrI);
        int[] iArrI4 = py6.i();
        cy8.o(iArrI, 12, iArrI4);
        cy8.g(iArrI4, iArrI, iArrI4);
        cy8.o(iArrI4, 6, iArrI);
        cy8.g(iArrI, iArrI3, iArrI);
        cy8.n(iArrI, iArrI3);
        cy8.g(iArrI3, iArr, iArrI3);
        cy8.o(iArrI3, 31, iArrI4);
        cy8.g(iArrI4, iArrI3, iArrI);
        cy8.o(iArrI4, 32, iArrI4);
        cy8.g(iArrI4, iArrI, iArrI4);
        cy8.o(iArrI4, 62, iArrI4);
        cy8.g(iArrI4, iArrI, iArrI4);
        cy8.o(iArrI4, 4, iArrI4);
        cy8.g(iArrI4, iArrI2, iArrI4);
        cy8.o(iArrI4, 32, iArrI4);
        cy8.g(iArrI4, iArr, iArrI4);
        cy8.o(iArrI4, 62, iArrI4);
        cy8.n(iArrI4, iArrI2);
        if (py6.n(iArr, iArrI2)) {
            return new dy8(iArrI4);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrI = py6.i();
        cy8.n(this.g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrI = py6.i();
        cy8.q(this.g, ((dy8) w43Var).g, iArrI);
        return new dy8(iArrI);
    }

    @Override
    public boolean s() {
        return py6.q(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return py6.J(this.g);
    }

    public dy8(int[] iArr) {
        this.g = iArr;
    }
}
