package defpackage;

public class th5 extends j1 {
    public byte[] b;
    public byte[] c;

    public th5(s1 s1Var) {
        this.b = ci.f(m1.y(s1Var.A(0)).z());
        this.c = ci.f(m1.y(s1Var.A(1)).z());
    }

    public static th5 m(Object obj) {
        if (obj instanceof th5) {
            return (th5) obj;
        }
        if (obj != null) {
            return new th5(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new wp1(this.b));
        y0Var.a(new wp1(this.c));
        return new aq1(y0Var);
    }

    public byte[] n() {
        return ci.f(this.c);
    }

    public byte[] o() {
        return ci.f(this.b);
    }
}
