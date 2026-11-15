package defpackage;

public class o96 extends j1 {
    public int b;
    public int c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public oa g;

    public o96(int i, int i2, x94 x94Var, tc8 tc8Var, u08 u08Var, oa oaVar) {
        this.b = i;
        this.c = i2;
        this.d = x94Var.e();
        this.e = tc8Var.h();
        this.f = u08Var.a();
        this.g = oaVar;
    }

    public static o96 p(Object obj) {
        if (obj instanceof o96) {
            return (o96) obj;
        }
        if (obj != null) {
            return new o96(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(this.b));
        y0Var.a(new g1(this.c));
        y0Var.a(new wp1(this.d));
        y0Var.a(new wp1(this.e));
        y0Var.a(new wp1(this.f));
        y0Var.a(this.g);
        return new aq1(y0Var);
    }

    public oa m() {
        return this.g;
    }

    public x94 n() {
        return new x94(this.d);
    }

    public tc8 o() {
        return new tc8(n(), this.e);
    }

    public int q() {
        return this.c;
    }

    public int r() {
        return this.b;
    }

    public u08 s() {
        return new u08(this.f);
    }

    public o96(s1 s1Var) {
        this.b = ((g1) s1Var.A(0)).F();
        this.c = ((g1) s1Var.A(1)).F();
        this.d = ((m1) s1Var.A(2)).z();
        this.e = ((m1) s1Var.A(3)).z();
        this.f = ((m1) s1Var.A(4)).z();
        this.g = oa.o(s1Var.A(5));
    }
}
