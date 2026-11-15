package defpackage;

public class uq1 extends a1 {
    public uq1(yq1 yq1Var) {
        super(yq1Var);
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
            y0Var.a(p1Var.v());
        }
        int i = this.e;
        y0Var.a(new cr1(i == 0, i, this.f));
        return new yq1(y0Var);
    }
}
