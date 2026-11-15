package defpackage;

import java.math.BigInteger;

public class nr1 extends j1 {
    public BigInteger b;
    public mr1 c;
    public g1 d;
    public m1 e;
    public g1 f;
    public m1 g;

    public nr1(s1 s1Var) {
        this.b = BigInteger.valueOf(0L);
        int i = 0;
        if (s1Var.A(0) instanceof y1) {
            y1 y1Var = (y1) s1Var.A(0);
            if (!y1Var.N() || y1Var.J() != 0) {
                throw new IllegalArgumentException("object parse error");
            }
            this.b = g1.y(y1Var.b()).A();
            i = 1;
        }
        this.c = mr1.m(s1Var.A(i));
        this.d = g1.y(s1Var.A(i + 1));
        this.e = m1.y(s1Var.A(i + 2));
        this.f = g1.y(s1Var.A(i + 3));
        this.g = m1.y(s1Var.A(i + 4));
    }

    public static nr1 q(Object obj) {
        if (obj instanceof nr1) {
            return (nr1) obj;
        }
        if (obj != null) {
            return new nr1(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(6);
        if (this.b.compareTo(BigInteger.valueOf(0L)) != 0) {
            y0Var.a(new dq1(true, 0, new g1(this.b)));
        }
        y0Var.a(this.c);
        y0Var.a(this.d);
        y0Var.a(this.e);
        y0Var.a(this.f);
        y0Var.a(this.g);
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.d.A();
    }

    public byte[] n() {
        return ci.f(this.e.z());
    }

    public mr1 o() {
        return this.c;
    }

    public byte[] p() {
        return ci.f(this.g.z());
    }

    public BigInteger r() {
        return this.f.A();
    }
}
