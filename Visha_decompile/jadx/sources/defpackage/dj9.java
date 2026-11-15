package defpackage;

public class dj9 extends j1 implements yu7 {
    public g1 b;
    public t1 c;
    public dg1 d;
    public t1 e;
    public t1 f;
    public t1 g;

    public dj9(g1 g1Var, t1 t1Var, dg1 dg1Var, t1 t1Var2, t1 t1Var3, t1 t1Var4) {
        this.b = g1Var;
        this.c = t1Var;
        this.d = dg1Var;
        this.e = t1Var2;
        this.f = t1Var3;
        this.g = t1Var4;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(6);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        t1 t1Var = this.e;
        if (t1Var != null) {
            y0Var.a(new dq1(false, 0, t1Var));
        }
        t1 t1Var2 = this.f;
        if (t1Var2 != null) {
            y0Var.a(new dq1(false, 1, t1Var2));
        }
        y0Var.a(this.g);
        return new l40(y0Var);
    }
}
