package defpackage;

public class gl extends j1 {
    public il b;
    public oa c;
    public s0 d;

    public gl(s1 s1Var) {
        if (s1Var.size() == 3) {
            this.b = il.q(s1Var.A(0));
            this.c = oa.o(s1Var.A(1));
            this.d = s0.z(s1Var.A(2));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static gl n(Object obj) {
        if (obj instanceof gl) {
            return (gl) obj;
        }
        if (obj != null) {
            return new gl(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        return new aq1(y0Var);
    }

    public il m() {
        return this.b;
    }

    public oa o() {
        return this.c;
    }

    public s0 p() {
        return this.d;
    }
}
