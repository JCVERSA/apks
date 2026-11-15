package defpackage;

public class xo3 extends j1 {
    public byte[] b;

    public xo3(s1 s1Var) {
        this.b = ci.f(m1.y(s1Var.A(0)).z());
    }

    public static xo3 n(Object obj) {
        if (obj instanceof xo3) {
            return (xo3) obj;
        }
        if (obj != null) {
            return new xo3(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new wp1(this.b));
        return new aq1(y0Var);
    }

    public byte[] m() {
        return this.b;
    }

    public xo3(byte[] bArr) {
        this.b = bArr;
    }
}
