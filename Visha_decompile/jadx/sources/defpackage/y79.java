package defpackage;

import java.math.BigInteger;

public class y79 extends w43.a {
    public long[] g;

    public y79(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.g = x79.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrG = ly6.g();
        x79.a(this.g, ((y79) w43Var).g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 b() {
        long[] jArrG = ly6.g();
        x79.c(this.g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y79) {
            return ly6.k(this.g, ((y79) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return 113;
    }

    @Override
    public w43 g() {
        long[] jArrG = ly6.g();
        x79.j(this.g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public boolean h() {
        return ly6.p(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 2) ^ 113009;
    }

    @Override
    public boolean i() {
        return ly6.r(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrG = ly6.g();
        x79.k(this.g, ((y79) w43Var).g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((y79) w43Var).g;
        long[] jArr3 = ((y79) w43Var2).g;
        long[] jArr4 = ((y79) w43Var3).g;
        long[] jArrI = ly6.i();
        x79.l(jArr, jArr2, jArrI);
        x79.l(jArr3, jArr4, jArrI);
        long[] jArrG = ly6.g();
        x79.m(jArrI, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrG = ly6.g();
        x79.n(this.g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 o() {
        long[] jArrG = ly6.g();
        x79.o(this.g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((y79) w43Var).g;
        long[] jArr3 = ((y79) w43Var2).g;
        long[] jArrI = ly6.i();
        x79.p(jArr, jArrI);
        x79.l(jArr2, jArr3, jArrI);
        long[] jArrG = ly6.g();
        x79.m(jArrI, jArrG);
        return new y79(jArrG);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrG = ly6.g();
        x79.q(this.g, i, jArrG);
        return new y79(jArrG);
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
        return ly6.y(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrG = ly6.g();
        x79.f(this.g, jArrG);
        return new y79(jArrG);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return x79.r(this.g);
    }

    public y79(long[] jArr) {
        this.g = jArr;
    }
}
