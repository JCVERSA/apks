package defpackage;

import java.math.BigInteger;

public class p69 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));
    public int[] g;

    public p69(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.g = o69.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrD = my6.d();
        o69.a(this.g, ((p69) w43Var).g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public w43 b() {
        int[] iArrD = my6.d();
        o69.b(this.g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrD = my6.d();
        o69.d(((p69) w43Var).g, iArrD);
        o69.f(iArrD, this.g, iArrD);
        return new p69(iArrD);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p69) {
            return my6.f(this.g, ((p69) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrD = my6.d();
        o69.d(this.g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public boolean h() {
        return my6.j(this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 5) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return my6.k(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrD = my6.d();
        o69.f(this.g, ((p69) w43Var).g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public w43 m() {
        int[] iArrD = my6.d();
        o69.h(this.g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (my6.k(iArr) || my6.j(iArr)) {
            return this;
        }
        int[] iArrD = my6.d();
        o69.m(iArr, iArrD);
        o69.f(iArrD, iArr, iArrD);
        int[] iArrD2 = my6.d();
        o69.m(iArrD, iArrD2);
        o69.f(iArrD2, iArr, iArrD2);
        int[] iArrD3 = my6.d();
        o69.m(iArrD2, iArrD3);
        o69.f(iArrD3, iArr, iArrD3);
        int[] iArrD4 = my6.d();
        o69.n(iArrD3, 3, iArrD4);
        o69.f(iArrD4, iArrD2, iArrD4);
        o69.n(iArrD4, 7, iArrD3);
        o69.f(iArrD3, iArrD4, iArrD3);
        o69.n(iArrD3, 3, iArrD4);
        o69.f(iArrD4, iArrD2, iArrD4);
        int[] iArrD5 = my6.d();
        o69.n(iArrD4, 14, iArrD5);
        o69.f(iArrD5, iArrD3, iArrD5);
        o69.n(iArrD5, 31, iArrD3);
        o69.f(iArrD3, iArrD5, iArrD3);
        o69.n(iArrD3, 62, iArrD5);
        o69.f(iArrD5, iArrD3, iArrD5);
        o69.n(iArrD5, 3, iArrD3);
        o69.f(iArrD3, iArrD2, iArrD3);
        o69.n(iArrD3, 18, iArrD3);
        o69.f(iArrD3, iArrD4, iArrD3);
        o69.n(iArrD3, 2, iArrD3);
        o69.f(iArrD3, iArr, iArrD3);
        o69.n(iArrD3, 3, iArrD3);
        o69.f(iArrD3, iArrD, iArrD3);
        o69.n(iArrD3, 6, iArrD3);
        o69.f(iArrD3, iArrD2, iArrD3);
        o69.n(iArrD3, 2, iArrD3);
        o69.f(iArrD3, iArr, iArrD3);
        o69.m(iArrD3, iArrD);
        if (my6.f(iArr, iArrD)) {
            return new p69(iArrD3);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrD = my6.d();
        o69.m(this.g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrD = my6.d();
        o69.o(this.g, ((p69) w43Var).g, iArrD);
        return new p69(iArrD);
    }

    @Override
    public boolean s() {
        return my6.h(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return my6.u(this.g);
    }

    public p69(int[] iArr) {
        this.g = iArr;
    }
}
