package defpackage;

import java.math.BigInteger;

public class t69 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"));
    public int[] g;

    public t69(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.g = s69.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrH = ny6.h();
        s69.a(this.g, ((t69) w43Var).g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public w43 b() {
        int[] iArrH = ny6.h();
        s69.b(this.g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrH = ny6.h();
        s69.d(((t69) w43Var).g, iArrH);
        s69.f(iArrH, this.g, iArrH);
        return new t69(iArrH);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof t69) {
            return ny6.m(this.g, ((t69) obj).g);
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
        s69.d(this.g, iArrH);
        return new t69(iArrH);
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
        s69.f(this.g, ((t69) w43Var).g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public w43 m() {
        int[] iArrH = ny6.h();
        s69.h(this.g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (ny6.u(iArr) || ny6.s(iArr)) {
            return this;
        }
        int[] iArrH = ny6.h();
        s69.m(iArr, iArrH);
        s69.f(iArrH, iArr, iArrH);
        int[] iArrH2 = ny6.h();
        s69.m(iArrH, iArrH2);
        s69.f(iArrH2, iArr, iArrH2);
        int[] iArrH3 = ny6.h();
        s69.n(iArrH2, 3, iArrH3);
        s69.f(iArrH3, iArrH2, iArrH3);
        s69.n(iArrH3, 2, iArrH3);
        s69.f(iArrH3, iArrH, iArrH3);
        s69.n(iArrH3, 8, iArrH);
        s69.f(iArrH, iArrH3, iArrH);
        s69.n(iArrH, 3, iArrH3);
        s69.f(iArrH3, iArrH2, iArrH3);
        int[] iArrH4 = ny6.h();
        s69.n(iArrH3, 16, iArrH4);
        s69.f(iArrH4, iArrH, iArrH4);
        s69.n(iArrH4, 35, iArrH);
        s69.f(iArrH, iArrH4, iArrH);
        s69.n(iArrH, 70, iArrH4);
        s69.f(iArrH4, iArrH, iArrH4);
        s69.n(iArrH4, 19, iArrH);
        s69.f(iArrH, iArrH3, iArrH);
        s69.n(iArrH, 20, iArrH);
        s69.f(iArrH, iArrH3, iArrH);
        s69.n(iArrH, 4, iArrH);
        s69.f(iArrH, iArrH2, iArrH);
        s69.n(iArrH, 6, iArrH);
        s69.f(iArrH, iArrH2, iArrH);
        s69.m(iArrH, iArrH);
        s69.m(iArrH, iArrH2);
        if (ny6.m(iArr, iArrH2)) {
            return new t69(iArrH);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrH = ny6.h();
        s69.m(this.g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrH = ny6.h();
        s69.o(this.g, ((t69) w43Var).g, iArrH);
        return new t69(iArrH);
    }

    @Override
    public boolean s() {
        return ny6.p(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return ny6.H(this.g);
    }

    public t69(int[] iArr) {
        this.g = iArr;
    }
}
