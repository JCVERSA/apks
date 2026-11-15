package defpackage;

public class py8 extends j1 {
    public int b;
    public byte[] c;
    public byte[] d;
    public qy8 e;

    public py8(s1 s1Var) {
        int iF = g1.y(s1Var.A(0)).F();
        this.b = iF;
        if (iF != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.c = ci.f(m1.y(s1Var.A(1)).z());
        this.d = ci.f(m1.y(s1Var.A(2)).z());
        if (s1Var.size() == 4) {
            this.e = qy8.m(s1Var.A(3));
        }
    }

    public static py8 m(Object obj) {
        if (obj instanceof py8) {
            return (py8) obj;
        }
        if (obj != null) {
            return new py8(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(this.b));
        y0Var.a(new wp1(this.c));
        y0Var.a(new wp1(this.d));
        qy8 qy8Var = this.e;
        if (qy8Var != null) {
            y0Var.a(new qy8(qy8Var.o(), this.e.n()));
        }
        return new aq1(y0Var);
    }

    public qy8 n() {
        return this.e;
    }

    public byte[] o() {
        return ci.f(this.d);
    }

    public byte[] p() {
        return ci.f(this.c);
    }
}
