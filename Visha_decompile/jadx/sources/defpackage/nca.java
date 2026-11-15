package defpackage;

public class nca extends j1 {
    public s1 b;
    public g1 c;
    public g1 d;
    public oa e;
    public cqc f;
    public mna g;
    public mna h;
    public cqc i;
    public s1a j;
    public s0 k;
    public s0 l;
    public gk3 m;

    public nca(s1 s1Var) {
        int i;
        boolean z;
        boolean z2;
        this.b = s1Var;
        if (s1Var.A(0) instanceof y1) {
            this.c = g1.x((y1) s1Var.A(0), true);
            i = 0;
        } else {
            this.c = new g1(0L);
            i = -1;
        }
        if (this.c.B(0)) {
            z2 = false;
            z = true;
        } else if (this.c.B(1)) {
            z = false;
            z2 = true;
        } else {
            if (!this.c.B(2)) {
                throw new IllegalArgumentException("version number not recognised");
            }
            z = false;
            z2 = false;
        }
        this.d = g1.y(s1Var.A(i + 1));
        this.e = oa.o(s1Var.A(i + 2));
        this.f = cqc.o(s1Var.A(i + 3));
        s1 s1Var2 = (s1) s1Var.A(i + 4);
        this.g = mna.n(s1Var2.A(0));
        this.h = mna.n(s1Var2.A(1));
        this.i = cqc.o(s1Var.A(i + 5));
        int i2 = i + 6;
        this.j = s1a.n(s1Var.A(i2));
        int size = (s1Var.size() - i2) - 1;
        if (size != 0 && z) {
            throw new IllegalArgumentException("version 1 certificate contains extra data");
        }
        while (size > 0) {
            y1 y1Var = (y1) s1Var.A(i2 + size);
            int iJ = y1Var.J();
            if (iJ == 1) {
                this.k = s0.y(y1Var, false);
            } else if (iJ == 2) {
                this.l = s0.y(y1Var, false);
            } else {
                if (iJ != 3) {
                    throw new IllegalArgumentException("Unknown tag encountered in structure: " + y1Var.J());
                }
                if (z2) {
                    throw new IllegalArgumentException("version 2 certificate cannot contain extensions");
                }
                this.m = gk3.t(s1.y(y1Var, true));
            }
            size--;
        }
    }

    public static nca o(Object obj) {
        if (obj instanceof nca) {
            return (nca) obj;
        }
        if (obj != null) {
            return new nca(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        if (qi8.b("org.bouncycastle.x509.allow_non-der_tbscert") != null && !qi8.c("org.bouncycastle.x509.allow_non-der_tbscert")) {
            y0 y0Var = new y0();
            if (!this.c.B(0)) {
                y0Var.a(new dq1(true, 0, this.c));
            }
            y0Var.a(this.d);
            y0Var.a(this.e);
            y0Var.a(this.f);
            y0 y0Var2 = new y0(2);
            y0Var2.a(this.g);
            y0Var2.a(this.h);
            y0Var.a(new aq1(y0Var2));
            x0 aq1Var = this.i;
            if (aq1Var == null) {
                aq1Var = new aq1();
            }
            y0Var.a(aq1Var);
            y0Var.a(this.j);
            s0 s0Var = this.k;
            if (s0Var != null) {
                y0Var.a(new dq1(false, 1, s0Var));
            }
            s0 s0Var2 = this.l;
            if (s0Var2 != null) {
                y0Var.a(new dq1(false, 2, s0Var2));
            }
            gk3 gk3Var = this.m;
            if (gk3Var != null) {
                y0Var.a(new dq1(true, 3, gk3Var));
            }
            return new aq1(y0Var);
        }
        return this.b;
    }

    public mna m() {
        return this.h;
    }

    public gk3 n() {
        return this.m;
    }

    public cqc p() {
        return this.f;
    }

    public s0 q() {
        return this.k;
    }

    public g1 r() {
        return this.d;
    }

    public oa s() {
        return this.e;
    }

    public mna t() {
        return this.g;
    }

    public cqc u() {
        return this.i;
    }

    public s1a v() {
        return this.j;
    }

    public s0 w() {
        return this.l;
    }

    public int x() {
        return this.c.F() + 1;
    }
}
