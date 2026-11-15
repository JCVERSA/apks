package defpackage;

import java.math.BigInteger;

public class x69 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));
    public int[] g;

    public x69(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.g = w69.d(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrH = ny6.h();
        w69.a(this.g, ((x69) w43Var).g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public w43 b() {
        int[] iArrH = ny6.h();
        w69.b(this.g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrH = ny6.h();
        w69.e(((x69) w43Var).g, iArrH);
        w69.g(iArrH, this.g, iArrH);
        return new x69(iArrH);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x69) {
            return ny6.m(this.g, ((x69) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrH = ny6.h();
        w69.e(this.g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public boolean h() {
        return ny6.s(this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 6) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return ny6.u(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrH = ny6.h();
        w69.g(this.g, ((x69) w43Var).g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public w43 m() {
        int[] iArrH = ny6.h();
        w69.i(this.g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (ny6.u(iArr) || ny6.s(iArr)) {
            return this;
        }
        int[] iArrH = ny6.h();
        int[] iArrH2 = ny6.h();
        w69.n(iArr, iArrH);
        w69.g(iArrH, iArr, iArrH);
        w69.o(iArrH, 2, iArrH2);
        w69.g(iArrH2, iArrH, iArrH2);
        w69.o(iArrH2, 4, iArrH);
        w69.g(iArrH, iArrH2, iArrH);
        w69.o(iArrH, 8, iArrH2);
        w69.g(iArrH2, iArrH, iArrH2);
        w69.o(iArrH2, 16, iArrH);
        w69.g(iArrH, iArrH2, iArrH);
        w69.o(iArrH, 32, iArrH2);
        w69.g(iArrH2, iArrH, iArrH2);
        w69.o(iArrH2, 64, iArrH);
        w69.g(iArrH, iArrH2, iArrH);
        w69.o(iArrH, 62, iArrH);
        w69.n(iArrH, iArrH2);
        if (ny6.m(iArr, iArrH2)) {
            return new x69(iArrH);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrH = ny6.h();
        w69.n(this.g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrH = ny6.h();
        w69.q(this.g, ((x69) w43Var).g, iArrH);
        return new x69(iArrH);
    }

    @Override
    public boolean s() {
        return ny6.p(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return ny6.H(this.g);
    }

    public x69(int[] iArr) {
        this.g = iArr;
    }
}
