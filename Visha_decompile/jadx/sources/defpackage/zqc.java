package defpackage;

public class zqc extends j1 {
    public final g1 b;
    public final int c;
    public final oa d;

    public zqc(int i, oa oaVar) {
        this.b = new g1(0L);
        this.c = i;
        this.d = oaVar;
    }

    public static zqc n(Object obj) {
        if (obj instanceof zqc) {
            return (zqc) obj;
        }
        if (obj != null) {
            return new zqc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.b);
        y0Var.a(new g1(this.c));
        y0Var.a(this.d);
        return new aq1(y0Var);
    }

    public int m() {
        return this.c;
    }

    public oa o() {
        return this.d;
    }

    public zqc(s1 s1Var) {
        this.b = g1.y(s1Var.A(0));
        this.c = g1.y(s1Var.A(1)).F();
        this.d = oa.o(s1Var.A(2));
    }
}
