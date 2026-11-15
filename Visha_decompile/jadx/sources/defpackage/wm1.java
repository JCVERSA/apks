package defpackage;

import java.math.BigInteger;

public class wm1 extends w43.b {
    public static final BigInteger h = py6.J(vm1.a);
    public static final int[] i = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};
    public int[] g;

    public wm1() {
        this.g = py6.i();
    }

    @Override
    public w43 a(w43 w43Var) {
        int[] iArrI = py6.i();
        vm1.a(this.g, ((wm1) w43Var).g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public w43 b() {
        int[] iArrI = py6.i();
        vm1.b(this.g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        int[] iArrI = py6.i();
        vm1.e(((wm1) w43Var).g, iArrI);
        vm1.g(iArrI, this.g, iArrI);
        return new wm1(iArrI);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof wm1) {
            return py6.n(this.g, ((wm1) obj).g);
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
        vm1.e(this.g, iArrI);
        return new wm1(iArrI);
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
        vm1.g(this.g, ((wm1) w43Var).g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public w43 m() {
        int[] iArrI = py6.i();
        vm1.i(this.g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public w43 n() {
        int[] iArr = this.g;
        if (py6.v(iArr) || py6.t(iArr)) {
            return this;
        }
        int[] iArrI = py6.i();
        vm1.n(iArr, iArrI);
        vm1.g(iArrI, iArr, iArrI);
        vm1.n(iArrI, iArrI);
        vm1.g(iArrI, iArr, iArrI);
        int[] iArrI2 = py6.i();
        vm1.n(iArrI, iArrI2);
        vm1.g(iArrI2, iArr, iArrI2);
        int[] iArrI3 = py6.i();
        vm1.o(iArrI2, 3, iArrI3);
        vm1.g(iArrI3, iArrI, iArrI3);
        vm1.o(iArrI3, 4, iArrI);
        vm1.g(iArrI, iArrI2, iArrI);
        vm1.o(iArrI, 4, iArrI3);
        vm1.g(iArrI3, iArrI2, iArrI3);
        vm1.o(iArrI3, 15, iArrI2);
        vm1.g(iArrI2, iArrI3, iArrI2);
        vm1.o(iArrI2, 30, iArrI3);
        vm1.g(iArrI3, iArrI2, iArrI3);
        vm1.o(iArrI3, 60, iArrI2);
        vm1.g(iArrI2, iArrI3, iArrI2);
        vm1.o(iArrI2, 11, iArrI3);
        vm1.g(iArrI3, iArrI, iArrI3);
        vm1.o(iArrI3, 120, iArrI);
        vm1.g(iArrI, iArrI2, iArrI);
        vm1.n(iArrI, iArrI);
        vm1.n(iArrI, iArrI2);
        if (py6.n(iArr, iArrI2)) {
            return new wm1(iArrI);
        }
        vm1.g(iArrI, i, iArrI);
        vm1.n(iArrI, iArrI2);
        if (py6.n(iArr, iArrI2)) {
            return new wm1(iArrI);
        }
        return null;
    }

    @Override
    public w43 o() {
        int[] iArrI = py6.i();
        vm1.n(this.g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public w43 r(w43 w43Var) {
        int[] iArrI = py6.i();
        vm1.r(this.g, ((wm1) w43Var).g, iArrI);
        return new wm1(iArrI);
    }

    @Override
    public boolean s() {
        return py6.q(this.g, 0) == 1;
    }

    @Override
    public BigInteger t() {
        return py6.J(this.g);
    }

    public wm1(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(h) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.g = vm1.d(bigInteger);
    }

    public wm1(int[] iArr) {
        this.g = iArr;
    }
}
