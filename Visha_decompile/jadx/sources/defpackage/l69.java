package defpackage;

import java.math.BigInteger;

public class l69 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"));
    public int[] g;

    public l69(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.g = k69.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrD = my6.d();
        k69.a(this.g, ((l69) w43Var).g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public w43 b() {
        int[] iArrD = my6.d();
        k69.b(this.g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrD = my6.d();
        k69.d(((l69) w43Var).g, iArrD);
        k69.f(iArrD, this.g, iArrD);
        return new l69(iArrD);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l69) {
            return my6.f(this.g, ((l69) obj).g);
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
        k69.d(this.g, iArrD);
        return new l69(iArrD);
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
        k69.f(this.g, ((l69) w43Var).g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public w43 m() {
        int[] iArrD = my6.d();
        k69.h(this.g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (my6.k(iArr) || my6.j(iArr)) {
            return this;
        }
        int[] iArrD = my6.d();
        k69.m(iArr, iArrD);
        k69.f(iArrD, iArr, iArrD);
        int[] iArrD2 = my6.d();
        k69.n(iArrD, 2, iArrD2);
        k69.f(iArrD2, iArrD, iArrD2);
        k69.n(iArrD2, 4, iArrD);
        k69.f(iArrD, iArrD2, iArrD);
        k69.n(iArrD, 8, iArrD2);
        k69.f(iArrD2, iArrD, iArrD2);
        k69.n(iArrD2, 16, iArrD);
        k69.f(iArrD, iArrD2, iArrD);
        k69.n(iArrD, 32, iArrD2);
        k69.f(iArrD2, iArrD, iArrD2);
        k69.n(iArrD2, 64, iArrD);
        k69.f(iArrD, iArrD2, iArrD);
        k69.m(iArrD, iArrD2);
        k69.f(iArrD2, iArr, iArrD2);
        k69.n(iArrD2, 29, iArrD2);
        k69.m(iArrD2, iArrD);
        if (my6.f(iArr, iArrD)) {
            return new l69(iArrD2);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrD = my6.d();
        k69.m(this.g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrD = my6.d();
        k69.o(this.g, ((l69) w43Var).g, iArrD);
        return new l69(iArrD);
    }

    @Override
    public boolean s() {
        return my6.h(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return my6.u(this.g);
    }

    public l69(int[] iArr) {
        this.g = iArr;
    }
}
