package defpackage;

public class n55 extends j1 {
    public ld4 b;
    public g1 c;
    public s0 d;

    public n55(s1 s1Var) {
        if (s1Var.size() != 2 && s1Var.size() != 3) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        this.b = ld4.o(s1Var.A(0));
        this.c = g1.y(s1Var.A(1));
        if (s1Var.size() == 3) {
            this.d = s0.z(s1Var.A(2));
        }
    }

    public static n55 m(y1 y1Var, boolean z) {
        return n(s1.y(y1Var, z));
    }

    public static n55 n(Object obj) {
        if (obj instanceof n55) {
            return (n55) obj;
        }
        if (obj != null) {
            return new n55(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        y0Var.a(this.c);
        s0 s0Var = this.d;
        if (s0Var != null) {
            y0Var.a(s0Var);
        }
        return new aq1(y0Var);
    }
}
