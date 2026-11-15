package defpackage;

public class op1 extends a1 {
    public op1(l1 l1Var, g1 g1Var, p1 p1Var, int i, p1 p1Var2) {
        super(l1Var, g1Var, p1Var, i, p1Var2);
    }

    @Override
    public p1 u() {
        return this;
    }

    @Override
    public p1 v() {
        return this;
    }

    @Override
    public s1 w() {
        y0 y0Var = new y0(4);
        l1 l1Var = this.b;
        if (l1Var != null) {
            y0Var.a(l1Var);
        }
        g1 g1Var = this.c;
        if (g1Var != null) {
            y0Var.a(g1Var);
        }
        p1 p1Var = this.d;
        if (p1Var != null) {
            y0Var.a(p1Var.u());
        }
        int i = this.e;
        y0Var.a(new dq1(i == 0, i, this.f));
        return new aq1(y0Var);
    }

    public op1(aq1 aq1Var) {
        super(aq1Var);
    }
}
