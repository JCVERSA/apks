package defpackage;

public class cp0 extends j1 {
    public byte[] b;

    public cp0(s1 s1Var) {
        this.b = ci.f(m1.y(s1Var.A(0)).z());
    }

    public static cp0 m(Object obj) {
        if (obj instanceof cp0) {
            return (cp0) obj;
        }
        if (obj != null) {
            return new cp0(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new wp1(this.b));
        return new aq1(y0Var);
    }

    public byte[] n() {
        return ci.f(this.b);
    }

    public cp0(byte[] bArr) {
        this.b = bArr;
    }
}
