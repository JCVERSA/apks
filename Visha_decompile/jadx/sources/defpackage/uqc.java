package defpackage;

import java.math.BigInteger;

public class uqc extends j1 implements wqc {
    public l1 b;
    public p1 c;

    public uqc(int i, int i2) {
        this(i, i2, 0, 0);
    }

    public static uqc n(Object obj) {
        if (obj instanceof uqc) {
            return (uqc) obj;
        }
        if (obj != null) {
            return new uqc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public l1 m() {
        return this.b;
    }

    public p1 o() {
        return this.c;
    }

    public uqc(int i, int i2, int i3, int i4) {
        this.b = wqc.e5;
        y0 y0Var = new y0(3);
        y0Var.a(new g1(i));
        if (i3 == 0) {
            if (i4 != 0) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            y0Var.a(wqc.g5);
            y0Var.a(new g1(i2));
        } else {
            if (i3 <= i2 || i4 <= i3) {
                throw new IllegalArgumentException("inconsistent k values");
            }
            y0Var.a(wqc.h5);
            y0 y0Var2 = new y0(3);
            y0Var2.a(new g1(i2));
            y0Var2.a(new g1(i3));
            y0Var2.a(new g1(i4));
            y0Var.a(new aq1(y0Var2));
        }
        this.c = new aq1(y0Var);
    }

    public uqc(s1 s1Var) {
        this.b = l1.D(s1Var.A(0));
        this.c = s1Var.A(1).j();
    }

    public uqc(BigInteger bigInteger) {
        this.b = wqc.d5;
        this.c = new g1(bigInteger);
    }
}
