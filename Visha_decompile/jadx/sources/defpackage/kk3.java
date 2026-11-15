package defpackage;

public class kk3 extends j1 {
    public final ld4 b;
    public final oa c;
    public final byte[] d;

    public kk3(kd4 kd4Var, oa oaVar, byte[] bArr) {
        this.b = new ld4(kd4Var);
        this.c = oaVar;
        this.d = ci.f(bArr);
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(new wp1(this.d));
        return new aq1(y0Var);
    }

    public oa m() {
        return this.c;
    }

    public byte[] n() {
        return ci.f(this.d);
    }

    public kd4 o() {
        return this.b.p()[0];
    }
}
