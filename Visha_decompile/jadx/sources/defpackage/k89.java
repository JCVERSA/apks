package defpackage;

import java.math.BigInteger;

public class k89 extends w43.a {
    public long[] g;

    public k89(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.g = j89.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrI = ny6.i();
        j89.a(this.g, ((k89) w43Var).g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 b() {
        long[] jArrI = ny6.i();
        j89.c(this.g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k89) {
            return ny6.n(this.g, ((k89) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 163;
    }

    @Override
    public w43 g() {
        long[] jArrI = ny6.i();
        j89.k(this.g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public boolean h() {
        return ny6.t(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 3) ^ 163763;
    }

    @Override
    public boolean i() {
        return ny6.v(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrI = ny6.i();
        j89.l(this.g, ((k89) w43Var).g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((k89) w43Var).g;
        long[] jArr3 = ((k89) w43Var2).g;
        long[] jArr4 = ((k89) w43Var3).g;
        long[] jArrK = ny6.k();
        j89.m(jArr, jArr2, jArrK);
        j89.m(jArr3, jArr4, jArrK);
        long[] jArrI = ny6.i();
        j89.n(jArrK, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrI = ny6.i();
        j89.o(this.g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 o() {
        long[] jArrI = ny6.i();
        j89.p(this.g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((k89) w43Var).g;
        long[] jArr3 = ((k89) w43Var2).g;
        long[] jArrK = ny6.k();
        j89.q(jArr, jArrK);
        j89.m(jArr2, jArr3, jArrK);
        long[] jArrI = ny6.i();
        j89.n(jArrK, jArrI);
        return new k89(jArrI);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrI = ny6.i();
        j89.r(this.g, i, jArrI);
        return new k89(jArrI);
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
        j89.f(this.g, jArrI);
        return new k89(jArrI);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return j89.s(this.g);
    }

    public k89(long[] jArr) {
        this.g = jArr;
    }
}
