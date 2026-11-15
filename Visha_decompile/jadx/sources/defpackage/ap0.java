package defpackage;

public class ap0 extends j1 {
    public int b;
    public byte[] c;
    public byte[] d;
    public byte[] e;
    public byte[] f;
    public byte[] g;
    public cp0 h;

    public ap0(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, cp0 cp0Var) {
        this.b = i;
        if (i != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.c = ci.f(bArr);
        this.d = ci.f(bArr2);
        this.e = ci.f(bArr3);
        this.f = ci.f(bArr4);
        this.g = ci.f(bArr5);
        this.h = cp0Var;
    }

    public static ap0 q(Object obj) {
        if (obj instanceof ap0) {
            return (ap0) obj;
        }
        if (obj != null) {
            return new ap0(s1.z(obj));
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
        y0Var.a(new wp1(this.f));
        y0Var.a(new wp1(this.g));
        cp0 cp0Var = this.h;
        if (cp0Var != null) {
            y0Var.a(new cp0(cp0Var.n()));
        }
        return new aq1(y0Var);
    }

    public byte[] m() {
        return ci.f(this.f);
    }

    public byte[] n() {
        return ci.f(this.d);
    }

    public byte[] o() {
        return ci.f(this.c);
    }

    public byte[] p() {
        return ci.f(this.e);
    }

    public byte[] r() {
        return ci.f(this.g);
    }

    public ap0(s1 s1Var) {
        int iF = g1.y(s1Var.A(0)).F();
        this.b = iF;
        if (iF != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.c = ci.f(m1.y(s1Var.A(1)).z());
        this.d = ci.f(m1.y(s1Var.A(2)).z());
        this.e = ci.f(m1.y(s1Var.A(3)).z());
        this.f = ci.f(m1.y(s1Var.A(4)).z());
        this.g = ci.f(m1.y(s1Var.A(5)).z());
        if (s1Var.size() == 7) {
            this.h = cp0.m(s1Var.A(6));
        }
    }
}
