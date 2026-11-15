package defpackage;

public class il extends j1 {
    public g1 b;
    public vr4 c;
    public al d;
    public oa e;
    public g1 f;
    public bl g;
    public s1 h;
    public s0 i;
    public gk3 j;

    public il(s1 s1Var) {
        if (s1Var.size() < 6 || s1Var.size() > 9) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        int i = 0;
        if (s1Var.A(0) instanceof g1) {
            this.b = g1.y(s1Var.A(0));
            i = 1;
        } else {
            this.b = new g1(0L);
        }
        this.c = vr4.m(s1Var.A(i));
        this.d = al.m(s1Var.A(i + 1));
        this.e = oa.o(s1Var.A(i + 2));
        this.f = g1.y(s1Var.A(i + 3));
        this.g = bl.m(s1Var.A(i + 4));
        this.h = s1.z(s1Var.A(i + 5));
        for (int i2 = i + 6; i2 < s1Var.size(); i2++) {
            x0 x0VarA = s1Var.A(i2);
            if (x0VarA instanceof s0) {
                this.i = s0.z(s1Var.A(i2));
            } else if ((x0VarA instanceof s1) || (x0VarA instanceof gk3)) {
                this.j = gk3.t(s1Var.A(i2));
            }
        }
    }

    public static il q(Object obj) {
        if (obj instanceof il) {
            return (il) obj;
        }
        if (obj != null) {
            return new il(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(9);
        if (!this.b.B(0)) {
            y0Var.a(this.b);
        }
        y0Var.a(this.c);
        y0Var.a(this.d);
        y0Var.a(this.e);
        y0Var.a(this.f);
        y0Var.a(this.g);
        y0Var.a(this.h);
        s0 s0Var = this.i;
        if (s0Var != null) {
            y0Var.a(s0Var);
        }
        gk3 gk3Var = this.j;
        if (gk3Var != null) {
            y0Var.a(gk3Var);
        }
        return new aq1(y0Var);
    }

    public bl m() {
        return this.g;
    }

    public s1 n() {
        return this.h;
    }

    public gk3 o() {
        return this.j;
    }

    public vr4 p() {
        return this.c;
    }

    public al r() {
        return this.d;
    }

    public s0 s() {
        return this.i;
    }

    public g1 t() {
        return this.f;
    }

    public oa u() {
        return this.e;
    }

    public g1 v() {
        return this.b;
    }
}
