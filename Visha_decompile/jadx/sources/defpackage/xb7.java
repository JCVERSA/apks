package defpackage;

public class xb7 extends j1 {
    public z0 b;
    public l1 c;
    public oa d;
    public s0 e;

    public xb7(s1 s1Var) {
        if (s1Var.size() > 4 || s1Var.size() < 3) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        int i = 0;
        this.b = z0.x(s1Var.A(0));
        if (s1Var.size() == 4) {
            i = 1;
            this.c = l1.D(s1Var.A(1));
        }
        this.d = oa.o(s1Var.A(i + 1));
        this.e = s0.z(s1Var.A(i + 2));
    }

    public static xb7 m(y1 y1Var, boolean z) {
        return n(s1.y(y1Var, z));
    }

    public static xb7 n(Object obj) {
        if (obj instanceof xb7) {
            return (xb7) obj;
        }
        if (obj != null) {
            return new xb7(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(4);
        y0Var.a(this.b);
        l1 l1Var = this.c;
        if (l1Var != null) {
            y0Var.a(l1Var);
        }
        y0Var.a(this.d);
        y0Var.a(this.e);
        return new aq1(y0Var);
    }
}
