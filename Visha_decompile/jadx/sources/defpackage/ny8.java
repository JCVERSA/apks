package defpackage;

public class ny8 extends j1 {
    public final g1 b;
    public final oa c;

    public ny8(s1 s1Var) {
        this.b = g1.y(s1Var.A(0));
        this.c = oa.o(s1Var.A(1));
    }

    public static final ny8 m(Object obj) {
        if (obj instanceof ny8) {
            return (ny8) obj;
        }
        if (obj != null) {
            return new ny8(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public oa n() {
        return this.c;
    }

    public ny8(oa oaVar) {
        this.b = new g1(0L);
        this.c = oaVar;
    }
}
