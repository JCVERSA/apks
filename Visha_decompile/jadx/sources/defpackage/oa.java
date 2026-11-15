package defpackage;

public class oa extends j1 {
    public l1 b;
    public x0 c;

    public oa(l1 l1Var) {
        this.b = l1Var;
    }

    public static oa n(y1 y1Var, boolean z) {
        return o(s1.y(y1Var, z));
    }

    public static oa o(Object obj) {
        if (obj instanceof oa) {
            return (oa) obj;
        }
        if (obj != null) {
            return new oa(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        x0 x0Var = this.c;
        if (x0Var != null) {
            y0Var.a(x0Var);
        }
        return new aq1(y0Var);
    }

    public l1 m() {
        return this.b;
    }

    public x0 p() {
        return this.c;
    }

    public oa(l1 l1Var, x0 x0Var) {
        this.b = l1Var;
        this.c = x0Var;
    }

    public oa(s1 s1Var) {
        if (s1Var.size() >= 1 && s1Var.size() <= 2) {
            this.b = l1.D(s1Var.A(0));
            this.c = s1Var.size() == 2 ? s1Var.A(1) : null;
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }
}
