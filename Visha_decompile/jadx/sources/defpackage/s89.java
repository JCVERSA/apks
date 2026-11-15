package defpackage;

import java.math.BigInteger;

public class s89 extends w43.a {
    public long[] g;

    public s89(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 193) {
            throw new IllegalArgumentException("x value invalid for SecT193FieldElement");
        }
        this.g = r89.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrJ = py6.j();
        r89.a(this.g, ((s89) w43Var).g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 b() {
        long[] jArrJ = py6.j();
        r89.c(this.g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s89) {
            return py6.o(this.g, ((s89) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 193;
    }

    @Override
    public w43 g() {
        long[] jArrJ = py6.j();
        r89.l(this.g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public boolean h() {
        return py6.u(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 4) ^ 1930015;
    }

    @Override
    public boolean i() {
        return py6.w(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrJ = py6.j();
        r89.m(this.g, ((s89) w43Var).g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((s89) w43Var).g;
        long[] jArr3 = ((s89) w43Var2).g;
        long[] jArr4 = ((s89) w43Var3).g;
        long[] jArrL = py6.l();
        r89.n(jArr, jArr2, jArrL);
        r89.n(jArr3, jArr4, jArrL);
        long[] jArrJ = py6.j();
        r89.o(jArrL, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrJ = py6.j();
        r89.p(this.g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 o() {
        long[] jArrJ = py6.j();
        r89.q(this.g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((s89) w43Var).g;
        long[] jArr3 = ((s89) w43Var2).g;
        long[] jArrL = py6.l();
        r89.r(jArr, jArrL);
        r89.n(jArr2, jArr3, jArrL);
        long[] jArrJ = py6.j();
        r89.o(jArrL, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrJ = py6.j();
        r89.s(this.g, i, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public w43 r(w43 w43Var) {
        return a(w43Var);
    }

    @Override
    public boolean s() {
        return (this.g[0] & 1) != 0;
    }

    @Override
    public BigInteger t() {
        return py6.K(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrJ = py6.j();
        r89.f(this.g, jArrJ);
        return new s89(jArrJ);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return r89.t(this.g);
    }

    public s89(long[] jArr) {
        this.g = jArr;
    }
}
