package defpackage;

public class q96 extends j1 {
    public final int b;
    public final int c;
    public final u94 d;
    public final oa e;

    public q96(int i, int i2, u94 u94Var, oa oaVar) {
        this.b = i;
        this.c = i2;
        this.d = new u94(u94Var.c());
        this.e = oaVar;
    }

    public static q96 o(Object obj) {
        if (obj instanceof q96) {
            return (q96) obj;
        }
        if (obj != null) {
            return new q96(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(this.b));
        y0Var.a(new g1(this.c));
        y0Var.a(new wp1(this.d.c()));
        y0Var.a(this.e);
        return new aq1(y0Var);
    }

    public oa m() {
        return this.e;
    }

    public u94 n() {
        return this.d;
    }

    public int p() {
        return this.b;
    }

    public int q() {
        return this.c;
    }

    public q96(s1 s1Var) {
        this.b = ((g1) s1Var.A(0)).F();
        this.c = ((g1) s1Var.A(1)).F();
        this.d = new u94(((m1) s1Var.A(2)).z());
        this.e = oa.o(s1Var.A(3));
    }
}
