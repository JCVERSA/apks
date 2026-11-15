package defpackage;

import com.transsion.apiinvoke.invoke.RspCode;
import java.math.BigInteger;

public class o99 extends w43.a {
    public long[] g;

    public o99(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.g = n99.e(bigInteger);
    }

    @Override
    public w43 a(w43 w43Var) {
        long[] jArrC = sy6.c();
        n99.a(this.g, ((o99) w43Var).g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 b() {
        long[] jArrC = sy6.c();
        n99.c(this.g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 d(w43 w43Var) {
        return j(w43Var.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o99) {
            return sy6.e(this.g, ((o99) obj).g);
        }
        return false;
    }

    @Override
    public int f() {
        return RspCode.ERROR_CHANNEL_NOT_REGISTER;
    }

    @Override
    public w43 g() {
        long[] jArrC = sy6.c();
        n99.l(this.g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public boolean h() {
        return sy6.f(this.g);
    }

    public int hashCode() {
        return ci.A(this.g, 0, 7) ^ 4090087;
    }

    @Override
    public boolean i() {
        return sy6.g(this.g);
    }

    @Override
    public w43 j(w43 w43Var) {
        long[] jArrC = sy6.c();
        n99.m(this.g, ((o99) w43Var).g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 k(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        return l(w43Var, w43Var2, w43Var3);
    }

    @Override
    public w43 l(w43 w43Var, w43 w43Var2, w43 w43Var3) {
        long[] jArr = this.g;
        long[] jArr2 = ((o99) w43Var).g;
        long[] jArr3 = ((o99) w43Var2).g;
        long[] jArr4 = ((o99) w43Var3).g;
        long[] jArrM = vy6.m(13);
        n99.n(jArr, jArr2, jArrM);
        n99.n(jArr3, jArr4, jArrM);
        long[] jArrC = sy6.c();
        n99.o(jArrM, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 m() {
        return this;
    }

    @Override
    public w43 n() {
        long[] jArrC = sy6.c();
        n99.p(this.g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 o() {
        long[] jArrC = sy6.c();
        n99.q(this.g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 p(w43 w43Var, w43 w43Var2) {
        long[] jArr = this.g;
        long[] jArr2 = ((o99) w43Var).g;
        long[] jArr3 = ((o99) w43Var2).g;
        long[] jArrM = vy6.m(13);
        n99.r(jArr, jArrM);
        n99.n(jArr2, jArr3, jArrM);
        long[] jArrC = sy6.c();
        n99.o(jArrM, jArrC);
        return new o99(jArrC);
    }

    @Override
    public w43 q(int i) {
        if (i < 1) {
            return this;
        }
        long[] jArrC = sy6.c();
        n99.s(this.g, i, jArrC);
        return new o99(jArrC);
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
        return sy6.h(this.g);
    }

    @Override
    public w43 u() {
        long[] jArrC = sy6.c();
        n99.f(this.g, jArrC);
        return new o99(jArrC);
    }

    @Override
    public boolean v() {
        return true;
    }

    @Override
    public int w() {
        return n99.t(this.g);
    }

    public o99(long[] jArr) {
        this.g = jArr;
    }
}
