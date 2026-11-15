package defpackage;

import java.util.Enumeration;

public class ns0 extends j1 {
    public mca b;
    public oa c;
    public s0 d;
    public boolean e = false;
    public int f;

    public ns0(s1 s1Var) {
        if (s1Var.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for CertificateList");
        }
        this.b = mca.n(s1Var.A(0));
        this.c = oa.o(s1Var.A(1));
        this.d = s0.z(s1Var.A(2));
    }

    public static ns0 m(Object obj) {
        if (obj instanceof ns0) {
            return (ns0) obj;
        }
        if (obj != null) {
            return new ns0(s1.z(obj));
        }
        return null;
    }

    @Override
    public int hashCode() {
        if (!this.e) {
            this.f = super.hashCode();
            this.e = true;
        }
        return this.f;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        return new aq1(y0Var);
    }

    public cqc n() {
        return this.b.o();
    }

    public mna o() {
        return this.b.p();
    }

    public Enumeration p() {
        return this.b.q();
    }

    public mca.b[] q() {
        return this.b.r();
    }

    public oa r() {
        return this.c;
    }

    public mca s() {
        return this.b;
    }

    public mna t() {
        return this.b.t();
    }
}
