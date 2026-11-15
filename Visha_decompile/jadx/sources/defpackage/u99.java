package defpackage;

import java.math.BigInteger;

public class u99 extends w43.a {
    public long[] g;

    public u99() {
        this.g = uy6.c();
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrC = uy6.c();
        t99.b(this.g, ((u99) w43Var).g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 b() {
        long[] jArrC = uy6.c();
        t99.f(this.g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u99) {
            return uy6.e(this.g, ((u99) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 571;
    }

    @Override
    public w43 g() {
        long[] jArrC = uy6.c();
        t99.n(this.g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public boolean h() {
        return uy6.f(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 9) ^ 5711052;
    }

    @Override
    public boolean i() {
        return uy6.g(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrC = uy6.c();
        t99.o(this.g, ((u99) w43Var).g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((u99) w43Var).g;
        long[] jArr3 = ((u99) w43Var2).g;
        long[] jArr4 = ((u99) w43Var3).g;
        long[] jArrD = uy6.d();
        t99.p(jArr, jArr2, jArrD);
        t99.p(jArr3, jArr4, jArrD);
        long[] jArrC = uy6.c();
        t99.t(jArrD, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrC = uy6.c();
        t99.v(this.g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 o() {
        long[] jArrC = uy6.c();
        t99.w(this.g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((u99) w43Var).g;
        long[] jArr3 = ((u99) w43Var2).g;
        long[] jArrD = uy6.d();
        t99.x(jArr, jArrD);
        t99.p(jArr2, jArr3, jArrD);
        long[] jArrC = uy6.c();
        t99.t(jArrD, jArrC);
        return new u99(jArrC);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrC = uy6.c();
        t99.y(this.g, i, jArrC);
        return new u99(jArrC);
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
        return uy6.h(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrC = uy6.c();
        t99.i(this.g, jArrC);
        return new u99(jArrC);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return t99.z(this.g);
    }

    public u99(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 571) {
            throw new IllegalArgumentException("x value invalid for SecT571FieldElement");
        }
        this.g = t99.h(bigInteger);
    }

    public u99(long[] jArr) {
        this.g = jArr;
    }
}
