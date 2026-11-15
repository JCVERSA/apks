package defpackage;

public class vo3 extends j1 {
    public int b;
    public byte[] c;
    public byte[] d;
    public byte[] e;
    public xo3 f;

    public vo3(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, xo3 xo3Var) {
        this.b = i;
        this.c = bArr;
        this.d = bArr2;
        this.e = bArr3;
        this.f = xo3Var;
    }

    public static vo3 o(Object obj) {
        if (obj instanceof vo3) {
            return (vo3) obj;
        }
        if (obj != null) {
            return new vo3(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(new g1(this.b));
        y0Var.a(new wp1(this.c));
        y0Var.a(new wp1(this.d));
        y0Var.a(new wp1(this.e));
        xo3 xo3Var = this.f;
        if (xo3Var != null) {
            y0Var.a(new xo3(xo3Var.m()));
        }
        return new aq1(y0Var);
    }

    public byte[] m() {
        return ci.f(this.e);
    }

    public byte[] n() {
        return ci.f(this.d);
    }

    public xo3 p() {
        return this.f;
    }

    public byte[] q() {
        return ci.f(this.c);
    }

    public vo3(s1 s1Var) {
        int iF = g1.y(s1Var.A(0)).F();
        this.b = iF;
        if (iF != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.c = ci.f(m1.y(s1Var.A(1)).z());
        this.d = ci.f(m1.y(s1Var.A(2)).z());
        this.e = ci.f(m1.y(s1Var.A(3)).z());
        if (s1Var.size() == 5) {
            this.f = xo3.n(s1Var.A(4));
        }
    }
}
