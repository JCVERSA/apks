package defpackage;

public class bl extends j1 {
    public c1 b;
    public c1 c;

    public bl(s1 s1Var) {
        if (s1Var.size() == 2) {
            this.b = c1.B(s1Var.A(0));
            this.c = c1.B(s1Var.A(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static bl m(Object obj) {
        if (obj instanceof bl) {
            return (bl) obj;
        }
        if (obj != null) {
            return new bl(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public c1 n() {
        return this.c;
    }

    public c1 o() {
        return this.b;
    }
}
