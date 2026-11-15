package defpackage;

import java.math.BigInteger;

public class e89 extends w43.a {
    public long[] g;

    public e89(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 131) {
            throw new IllegalArgumentException("x value invalid for SecT131FieldElement");
        }
        this.g = d89.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrI = ny6.i();
        d89.a(this.g, ((e89) w43Var).g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 b() {
        long[] jArrI = ny6.i();
        d89.c(this.g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e89) {
            return ny6.n(this.g, ((e89) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 131;
    }

    @Override
    public w43 g() {
        long[] jArrI = ny6.i();
        d89.k(this.g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public boolean h() {
        return ny6.t(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 3) ^ 131832;
    }

    @Override
    public boolean i() {
        return ny6.v(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrI = ny6.i();
        d89.l(this.g, ((e89) w43Var).g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((e89) w43Var).g;
        long[] jArr3 = ((e89) w43Var2).g;
        long[] jArr4 = ((e89) w43Var3).g;
        long[] jArrM = vy6.m(5);
        d89.m(jArr, jArr2, jArrM);
        d89.m(jArr3, jArr4, jArrM);
        long[] jArrI = ny6.i();
        d89.n(jArrM, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrI = ny6.i();
        d89.o(this.g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 o() {
        long[] jArrI = ny6.i();
        d89.p(this.g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((e89) w43Var).g;
        long[] jArr3 = ((e89) w43Var2).g;
        long[] jArrM = vy6.m(5);
        d89.q(jArr, jArrM);
        d89.m(jArr2, jArr3, jArrM);
        long[] jArrI = ny6.i();
        d89.n(jArrM, jArrI);
        return new e89(jArrI);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrI = ny6.i();
        d89.r(this.g, i, jArrI);
        return new e89(jArrI);
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
        return ny6.I(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrI = ny6.i();
        d89.f(this.g, jArrI);
        return new e89(jArrI);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return d89.s(this.g);
    }

    public e89(long[] jArr) {
        this.g = jArr;
    }
}
