package defpackage;

public class krc extends j1 {
    public final int b;
    public final int c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final int h;
    public final byte[] i;

    public krc(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.b = 0;
        this.c = i;
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
        this.g = ci.f(bArr4);
        this.i = ci.f(bArr5);
        this.h = -1;
    }

    public static krc o(Object obj) {
        if (obj instanceof krc) {
            return (krc) obj;
        }
        if (obj != null) {
            return new krc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.h >= 0 ? new g1(1L) : new g1(0L));
        y0 y0Var2 = new y0();
        y0Var2.a(new g1(this.c));
        y0Var2.a(new wp1(this.d));
        y0Var2.a(new wp1(this.e));
        y0Var2.a(new wp1(this.f));
        y0Var2.a(new wp1(this.g));
        if (this.h >= 0) {
            y0Var2.a(new dq1(false, 0, new g1(this.h)));
        }
        y0Var.a(new aq1(y0Var2));
        y0Var.a(new dq1(true, 0, new wp1(this.i)));
        return new aq1(y0Var);
    }

    public byte[] m() {
        return ci.f(this.i);
    }

    public int n() {
        return this.c;
    }

    public int p() {
        return this.h;
    }

    public byte[] q() {
        return ci.f(this.f);
    }

    public byte[] r() {
        return ci.f(this.g);
    }

    public byte[] s() {
        return ci.f(this.e);
    }

    public byte[] t() {
        return ci.f(this.d);
    }

    public int u() {
        return this.b;
    }

    public krc(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i2) {
        this.b = 1;
        this.c = i;
        this.d = ci.f(bArr);
        this.e = ci.f(bArr2);
        this.f = ci.f(bArr3);
        this.g = ci.f(bArr4);
        this.i = ci.f(bArr5);
        this.h = i2;
    }

    public krc(s1 s1Var) {
        int iF;
        g1 g1VarY = g1.y(s1Var.A(0));
        if (!g1VarY.B(0) && !g1VarY.B(1)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.b = g1VarY.F();
        if (s1Var.size() != 2 && s1Var.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        s1 s1VarZ = s1.z(s1Var.A(1));
        this.c = g1.y(s1VarZ.A(0)).F();
        this.d = ci.f(m1.y(s1VarZ.A(1)).z());
        this.e = ci.f(m1.y(s1VarZ.A(2)).z());
        this.f = ci.f(m1.y(s1VarZ.A(3)).z());
        this.g = ci.f(m1.y(s1VarZ.A(4)).z());
        if (s1VarZ.size() == 6) {
            y1 y1VarH = y1.H(s1VarZ.A(5));
            if (y1VarH.J() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            iF = g1.x(y1VarH, false).F();
        } else {
            if (s1VarZ.size() != 5) {
                throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
            }
            iF = -1;
        }
        this.h = iF;
        if (s1Var.size() == 3) {
            this.i = ci.f(m1.x(y1.H(s1Var.A(2)), true).z());
        } else {
            this.i = null;
        }
    }
}
