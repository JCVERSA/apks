package defpackage;

public class ms0 extends j1 {
    public s1 b;
    public nca c;
    public oa d;
    public s0 e;

    public ms0(s1 s1Var) {
        this.b = s1Var;
        if (s1Var.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for a certificate");
        }
        this.c = nca.o(s1Var.A(0));
        this.d = oa.o(s1Var.A(1));
        this.e = s0.z(s1Var.A(2));
    }

    public static ms0 n(Object obj) {
        if (obj instanceof ms0) {
            return (ms0) obj;
        }
        if (obj != null) {
            return new ms0(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        return this.b;
    }

    public mna m() {
        return this.c.m();
    }

    public cqc o() {
        return this.c.p();
    }

    public g1 p() {
        return this.c.r();
    }

    public s0 q() {
        return this.e;
    }

    public oa r() {
        return this.d;
    }

    public mna s() {
        return this.c.t();
    }

    public cqc t() {
        return this.c.u();
    }

    public s1a u() {
        return this.c.v();
    }

    public nca v() {
        return this.c;
    }

    public int w() {
        return this.c.x();
    }
}
