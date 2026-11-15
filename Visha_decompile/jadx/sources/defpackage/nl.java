package defpackage;

public class nl extends j1 {
    public l1 b;
    public x0 c;

    public nl(l1 l1Var, x0 x0Var) {
        this.b = l1Var;
        this.c = x0Var;
    }

    public static nl m(Object obj) {
        if (obj instanceof nl) {
            return (nl) obj;
        }
        if (obj != null) {
            return new nl(s1.z(obj));
        }
        throw new IllegalArgumentException("null value in getInstance()");
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public l1 n() {
        return this.b;
    }

    public x0 o() {
        return this.c;
    }

    public nl(s1 s1Var) {
        this.b = (l1) s1Var.A(0);
        this.c = s1Var.A(1);
    }
}
