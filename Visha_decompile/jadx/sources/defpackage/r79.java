package defpackage;

import java.math.BigInteger;

public class r79 extends w43.b {
    public static final BigInteger h = new BigInteger(1, jp4.b("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));
    public int[] g;

    public r79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.g = q79.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrL = vy6.l(12);
        q79.a(this.g, ((r79) w43Var).g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public w43 b() {
        int[] iArrL = vy6.l(12);
        q79.c(this.g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrL = vy6.l(12);
        q79.f(((r79) w43Var).g, iArrL);
        q79.h(iArrL, this.g, iArrL);
        return new r79(iArrL);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r79) {
            return vy6.p(12, this.g, ((r79) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return h.bitLength();
    }

    @Override
    public w43 g() {
        int[] iArrL = vy6.l(12);
        q79.f(this.g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public boolean h() {
        return vy6.z(12, this.g);
    }

    public int hashCode() {
        return ci.z(this.g, 0, 12) ^ h.hashCode();
    }

    @Override
    public boolean i() {
        return vy6.A(12, this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        int[] iArrL = vy6.l(12);
        q79.h(this.g, ((r79) w43Var).g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public w43 m() {
        int[] iArrL = vy6.l(12);
        q79.j(this.g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (vy6.A(12, iArr) || vy6.z(12, iArr)) {
            return this;
        }
        int[] iArrL = vy6.l(24);
        int[] iArrL2 = vy6.l(12);
        int[] iArrL3 = vy6.l(12);
        int[] iArrL4 = vy6.l(12);
        int[] iArrL5 = vy6.l(12);
        q79.p(iArr, iArrL2, iArrL);
        q79.i(iArrL2, iArr, iArrL2, iArrL);
        q79.q(iArrL2, 2, iArrL3, iArrL);
        q79.i(iArrL3, iArrL2, iArrL3, iArrL);
        q79.p(iArrL3, iArrL3, iArrL);
        q79.i(iArrL3, iArr, iArrL3, iArrL);
        q79.q(iArrL3, 5, iArrL4, iArrL);
        q79.i(iArrL4, iArrL3, iArrL4, iArrL);
        q79.q(iArrL4, 5, iArrL5, iArrL);
        q79.i(iArrL5, iArrL3, iArrL5, iArrL);
        q79.q(iArrL5, 15, iArrL3, iArrL);
        q79.i(iArrL3, iArrL5, iArrL3, iArrL);
        q79.q(iArrL3, 2, iArrL4, iArrL);
        q79.i(iArrL2, iArrL4, iArrL2, iArrL);
        q79.q(iArrL4, 28, iArrL4, iArrL);
        q79.i(iArrL3, iArrL4, iArrL3, iArrL);
        q79.q(iArrL3, 60, iArrL4, iArrL);
        q79.i(iArrL4, iArrL3, iArrL4, iArrL);
        q79.q(iArrL4, 120, iArrL3, iArrL);
        q79.i(iArrL3, iArrL4, iArrL3, iArrL);
        q79.q(iArrL3, 15, iArrL3, iArrL);
        q79.i(iArrL3, iArrL5, iArrL3, iArrL);
        q79.q(iArrL3, 33, iArrL3, iArrL);
        q79.i(iArrL3, iArrL2, iArrL3, iArrL);
        q79.q(iArrL3, 64, iArrL3, iArrL);
        q79.i(iArrL3, iArr, iArrL3, iArrL);
        q79.q(iArrL3, 30, iArrL2, iArrL);
        q79.p(iArrL2, iArrL3, iArrL);
        if (vy6.p(12, iArr, iArrL3)) {
            return new r79(iArrL2);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrL = vy6.l(12);
        q79.o(this.g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrL = vy6.l(12);
        q79.s(this.g, ((r79) w43Var).g, iArrL);
        return new r79(iArrL);
    }

    @Override
    public boolean s() {
        return vy6.s(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return vy6.U(12, this.g);
    }

    public r79(int[] iArr) {
        this.g = iArr;
    }
}
