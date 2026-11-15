package defpackage;

public class lrc extends j1 {
    public final byte[] b;
    public final byte[] c;

    public lrc(s1 s1Var) {
        if (!g1.y(s1Var.A(0)).B(0)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.b = ci.f(m1.y(s1Var.A(1)).z());
        this.c = ci.f(m1.y(s1Var.A(2)).z());
    }

    public static lrc m(Object obj) {
        if (obj instanceof lrc) {
            return (lrc) obj;
        }
        if (obj != null) {
            return new lrc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(0L));
        y0Var.a(new wp1(this.b));
        y0Var.a(new wp1(this.c));
        return new aq1(y0Var);
    }

    public byte[] n() {
        return ci.f(this.b);
    }

    public byte[] o() {
        return ci.f(this.c);
    }

    public lrc(byte[] bArr, byte[] bArr2) {
        this.b = ci.f(bArr);
        this.c = ci.f(bArr2);
    }
}
