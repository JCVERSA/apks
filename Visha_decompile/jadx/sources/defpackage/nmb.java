package defpackage;

public class nmb {
    public dq1 a = new dq1(true, 0, new g1(2));
    public g1 b;
    public oa c;
    public cqc d;
    public mna e;
    public mna f;
    public cqc g;
    public s1a h;
    public gk3 i;
    public boolean j;
    public np1 k;
    public np1 l;

    public nca a() {
        if (this.b == null || this.c == null || this.d == null || this.e == null || this.f == null || ((this.g == null && !this.j) || this.h == null)) {
            throw new IllegalStateException("not all mandatory fields set in V3 TBScertificate generator");
        }
        return nca.o(b());
    }

    public final s1 b() {
        y0 y0Var = new y0(10);
        y0Var.a(this.a);
        y0Var.a(this.b);
        oa oaVar = this.c;
        if (oaVar != null) {
            y0Var.a(oaVar);
        }
        y0Var.a(this.d);
        y0 y0Var2 = new y0(2);
        y0Var2.a(this.e);
        y0Var2.a(this.f);
        y0Var.a(new aq1(y0Var2));
        x0 aq1Var = this.g;
        if (aq1Var == null) {
            aq1Var = new aq1();
        }
        y0Var.a(aq1Var);
        y0Var.a(this.h);
        np1 np1Var = this.k;
        if (np1Var != null) {
            y0Var.a(new dq1(false, 1, np1Var));
        }
        np1 np1Var2 = this.l;
        if (np1Var2 != null) {
            y0Var.a(new dq1(false, 2, np1Var2));
        }
        gk3 gk3Var = this.i;
        if (gk3Var != null) {
            y0Var.a(new dq1(true, 3, gk3Var));
        }
        return new aq1(y0Var);
    }

    public void c(mna mnaVar) {
        this.f = mnaVar;
    }

    public void d(gk3 gk3Var) {
        bk3 bk3VarN;
        this.i = gk3Var;
        if (gk3Var == null || (bk3VarN = gk3Var.n(bk3.i)) == null || !bk3VarN.r()) {
            return;
        }
        this.j = true;
    }

    public void e(cqc cqcVar) {
        this.d = cqcVar;
    }

    public void f(g1 g1Var) {
        this.b = g1Var;
    }

    public void g(oa oaVar) {
        this.c = oaVar;
    }

    public void h(mna mnaVar) {
        this.e = mnaVar;
    }

    public void i(cqc cqcVar) {
        this.g = cqcVar;
    }

    public void j(s1a s1aVar) {
        this.h = s1aVar;
    }
}
