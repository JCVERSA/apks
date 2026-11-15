package defpackage;

public class el extends j1 {
    public l1 b;
    public t1 c;

    public el(s1 s1Var) {
        if (s1Var.size() == 2) {
            this.b = l1.D(s1Var.A(0));
            this.c = t1.y(s1Var.A(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static el n(Object obj) {
        if (obj instanceof el) {
            return (el) obj;
        }
        if (obj != null) {
            return new el(s1.z(obj));
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

    public l1 m() {
        return new l1(this.b.B());
    }
}
