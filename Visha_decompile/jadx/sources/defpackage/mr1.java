package defpackage;

public class mr1 extends j1 {
    public int b;
    public int c;
    public int d;
    public int e;

    public mr1(s1 s1Var) {
        this.b = g1.y(s1Var.A(0)).D();
        if (s1Var.A(1) instanceof g1) {
            this.c = ((g1) s1Var.A(1)).D();
        } else {
            if (!(s1Var.A(1) instanceof s1)) {
                throw new IllegalArgumentException("object parse error");
            }
            s1 s1VarZ = s1.z(s1Var.A(1));
            this.c = g1.y(s1VarZ.A(0)).D();
            this.d = g1.y(s1VarZ.A(1)).D();
            this.e = g1.y(s1VarZ.A(2)).D();
        }
    }

    public static mr1 m(Object obj) {
        if (obj instanceof mr1) {
            return (mr1) obj;
        }
        if (obj != null) {
            return new mr1(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(new g1(this.b));
        if (this.d == 0) {
            y0Var.a(new g1(this.c));
        } else {
            y0 y0Var2 = new y0(3);
            y0Var2.a(new g1(this.c));
            y0Var2.a(new g1(this.d));
            y0Var2.a(new g1(this.e));
            y0Var.a(new aq1(y0Var2));
        }
        return new aq1(y0Var);
    }

    public int n() {
        return this.c;
    }

    public int o() {
        return this.d;
    }

    public int p() {
        return this.e;
    }

    public int q() {
        return this.b;
    }
}
