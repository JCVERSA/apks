package defpackage;

public class grc extends j1 {
    public final byte[] b;
    public final byte[] c;

    public grc(byte[] bArr, byte[] bArr2) {
        this.b = ci.f(bArr);
        this.c = ci.f(bArr2);
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(0L));
        y0Var.a(new wp1(this.b));
        y0Var.a(new wp1(this.c));
        return new aq1(y0Var);
    }
}
