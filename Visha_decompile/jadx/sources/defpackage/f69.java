package defpackage;

import java.math.BigInteger;

public class f69 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));
    public int[] g;

    public f69(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.g = e69.d(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrF = ly6.f();
        e69.a(this.g, ((f69) w43Var).g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public w43 b() {
        int[] iArrF = ly6.f();
        e69.b(this.g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrF = ly6.f();
        e69.e(((f69) w43Var).g, iArrF);
        e69.g(iArrF, this.g, iArrF);
        return new f69(iArrF);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f69) {
            return ly6.j(this.g, ((f69) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrF = ly6.f();
        e69.e(this.g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public boolean h() {
        return ly6.o(this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 4) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return ly6.q(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrF = ly6.f();
        e69.g(this.g, ((f69) w43Var).g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public w43 m() {
        int[] iArrF = ly6.f();
        e69.i(this.g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (ly6.q(iArr) || ly6.o(iArr)) {
            return this;
        }
        int[] iArrF = ly6.f();
        e69.n(iArr, iArrF);
        e69.g(iArrF, iArr, iArrF);
        int[] iArrF2 = ly6.f();
        e69.o(iArrF, 2, iArrF2);
        e69.g(iArrF2, iArrF, iArrF2);
        int[] iArrF3 = ly6.f();
        e69.o(iArrF2, 4, iArrF3);
        e69.g(iArrF3, iArrF2, iArrF3);
        e69.o(iArrF3, 2, iArrF2);
        e69.g(iArrF2, iArrF, iArrF2);
        e69.o(iArrF2, 10, iArrF);
        e69.g(iArrF, iArrF2, iArrF);
        e69.o(iArrF, 10, iArrF3);
        e69.g(iArrF3, iArrF2, iArrF3);
        e69.n(iArrF3, iArrF2);
        e69.g(iArrF2, iArr, iArrF2);
        e69.o(iArrF2, 95, iArrF2);
        e69.n(iArrF2, iArrF3);
        if (ly6.j(iArr, iArrF3)) {
            return new f69(iArrF2);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrF = ly6.f();
        e69.n(this.g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrF = ly6.f();
        e69.q(this.g, ((f69) w43Var).g, iArrF);
        return new f69(iArrF);
    }

    @Override
    public boolean s() {
        return ly6.m(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return ly6.x(this.g);
    }

    public f69(int[] iArr) {
        this.g = iArr;
    }
}
