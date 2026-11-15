package defpackage;

import java.math.BigInteger;

public class v79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));
    public int[] g;

    public v79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.g = u79.c(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrL = vy6.l(17);
        u79.a(this.g, ((v79) w43Var).g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public w43 b() {
        int[] iArrL = vy6.l(17);
        u79.b(this.g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrL = vy6.l(17);
        u79.f(((v79) w43Var).g, iArrL);
        u79.h(iArrL, this.g, iArrL);
        return new v79(iArrL);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v79) {
            return vy6.p(17, this.g, ((v79) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrL = vy6.l(17);
        u79.f(this.g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public boolean h() {
        return vy6.z(17, this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 17) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return vy6.A(17, this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrL = vy6.l(17);
        u79.h(this.g, ((v79) w43Var).g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public w43 m() {
        int[] iArrL = vy6.l(17);
        u79.j(this.g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (vy6.A(17, iArr) || vy6.z(17, iArr)) {
            return this;
        }
        int[] iArrL = vy6.l(33);
        int[] iArrL2 = vy6.l(17);
        int[] iArrL3 = vy6.l(17);
        u79.q(iArr, 519, iArrL2, iArrL);
        u79.p(iArrL2, iArrL3, iArrL);
        if (vy6.p(17, iArr, iArrL3)) {
            return new v79(iArrL2);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrL = vy6.l(17);
        u79.o(this.g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrL = vy6.l(17);
        u79.r(this.g, ((v79) w43Var).g, iArrL);
        return new v79(iArrL);
    }

    @Override
    public boolean s() {
        return vy6.s(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return vy6.U(17, this.g);
    }

    public v79(int[] iArr) {
        this.g = iArr;
    }
}
