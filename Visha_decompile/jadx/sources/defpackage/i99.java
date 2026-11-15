package defpackage;

import java.math.BigInteger;

public class i99 extends w43.a {
    public long[] g;

    public i99(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 283) {
            throw new IllegalArgumentException("x value invalid for SecT283FieldElement");
        }
        this.g = h99.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrC = qy6.c();
        h99.a(this.g, ((i99) w43Var).g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 b() {
        long[] jArrC = qy6.c();
        h99.c(this.g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i99) {
            return qy6.e(this.g, ((i99) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 283;
    }

    @Override
    public w43 g() {
        long[] jArrC = qy6.c();
        h99.l(this.g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public boolean h() {
        return qy6.f(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 5) ^ 2831275;
    }

    @Override
    public boolean i() {
        return qy6.g(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrC = qy6.c();
        h99.m(this.g, ((i99) w43Var).g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((i99) w43Var).g;
        long[] jArr3 = ((i99) w43Var2).g;
        long[] jArr4 = ((i99) w43Var3).g;
        long[] jArrM = vy6.m(9);
        h99.n(jArr, jArr2, jArrM);
        h99.n(jArr3, jArr4, jArrM);
        long[] jArrC = qy6.c();
        h99.o(jArrM, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrC = qy6.c();
        h99.p(this.g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 o() {
        long[] jArrC = qy6.c();
        h99.q(this.g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((i99) w43Var).g;
        long[] jArr3 = ((i99) w43Var2).g;
        long[] jArrM = vy6.m(9);
        h99.r(jArr, jArrM);
        h99.n(jArr2, jArr3, jArrM);
        long[] jArrC = qy6.c();
        h99.o(jArrM, jArrC);
        return new i99(jArrC);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrC = qy6.c();
        h99.s(this.g, i, jArrC);
        return new i99(jArrC);
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
        return qy6.h(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrC = qy6.c();
        h99.f(this.g, jArrC);
        return new i99(jArrC);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return h99.t(this.g);
    }

    public i99(long[] jArr) {
        this.g = jArr;
    }
}
