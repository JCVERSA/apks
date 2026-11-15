package defpackage;

public class dg1 extends j1 implements yu7 {
    public l1 b;
    public x0 c;
    public boolean d = true;

    public dg1(l1 l1Var, x0 x0Var) {
        this.b = l1Var;
        this.c = x0Var;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        x0 x0Var = this.c;
        if (x0Var != null) {
            y0Var.a(new p40(true, 0, x0Var));
        }
        return this.d ? new l40(y0Var) : new yq1(y0Var);
    }
}
