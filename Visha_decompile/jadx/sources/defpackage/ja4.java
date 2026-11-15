package defpackage;

import java.math.BigInteger;

public class ja4 extends j1 {
    public int b;
    public g1 c;
    public g1 d;
    public g1 e;

    public ja4(int i, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.b = i;
        this.c = new g1(bigInteger);
        this.d = new g1(bigInteger2);
        this.e = new g1(bigInteger3);
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(4);
        y0Var.a(new g1(this.b));
        y0Var.a(this.c);
        y0Var.a(this.d);
        y0Var.a(this.e);
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.e.z();
    }

    public BigInteger n() {
        return this.c.z();
    }

    public BigInteger o() {
        return this.d.z();
    }
}
