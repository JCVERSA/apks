package defpackage;

public class erc extends j1 {
    public final int b;
    public final long c;
    public final long d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] g;
    public final byte[] h;
    public final byte[] i;

    public erc(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.b = 0;
        this.c = j;
        this.e = ci.f(bArr);
        this.f = ci.f(bArr2);
        this.g = ci.f(bArr3);
        this.h = ci.f(bArr4);
        this.i = ci.f(bArr5);
        this.d = -1L;
    }

    public static erc o(Object obj) {
        if (obj instanceof erc) {
            return (erc) obj;
        }
        if (obj != null) {
            return new erc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0();
        y0Var.a(this.d >= 0 ? new g1(1L) : new g1(0L));
        y0 y0Var2 = new y0();
        y0Var2.a(new g1(this.c));
        y0Var2.a(new wp1(this.e));
        y0Var2.a(new wp1(this.f));
        y0Var2.a(new wp1(this.g));
        y0Var2.a(new wp1(this.h));
        if (this.d >= 0) {
            y0Var2.a(new dq1(false, 0, new g1(this.d)));
        }
        y0Var.a(new aq1(y0Var2));
        y0Var.a(new dq1(true, 0, new wp1(this.i)));
        return new aq1(y0Var);
    }

    public byte[] m() {
        return ci.f(this.i);
    }

    public long n() {
        return this.c;
    }

    public long p() {
        return this.d;
    }

    public byte[] q() {
        return ci.f(this.g);
    }

    public byte[] r() {
        return ci.f(this.h);
    }

    public byte[] s() {
        return ci.f(this.f);
    }

    public byte[] t() {
        return ci.f(this.e);
    }

    public int u() {
        return this.b;
    }

    public erc(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, long j2) {
        this.b = 1;
        this.c = j;
        this.e = ci.f(bArr);
        this.f = ci.f(bArr2);
        this.g = ci.f(bArr3);
        this.h = ci.f(bArr4);
        this.i = ci.f(bArr5);
        this.d = j2;
    }

    public erc(s1 s1Var) {
        long jI;
        g1 g1VarY = g1.y(s1Var.A(0));
        if (!g1VarY.B(0) && !g1VarY.B(1)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.b = g1VarY.F();
        if (s1Var.size() != 2 && s1Var.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        s1 s1VarZ = s1.z(s1Var.A(1));
        this.c = g1.y(s1VarZ.A(0)).I();
        this.e = ci.f(m1.y(s1VarZ.A(1)).z());
        this.f = ci.f(m1.y(s1VarZ.A(2)).z());
        this.g = ci.f(m1.y(s1VarZ.A(3)).z());
        this.h = ci.f(m1.y(s1VarZ.A(4)).z());
        if (s1VarZ.size() == 6) {
            y1 y1VarH = y1.H(s1VarZ.A(5));
            if (y1VarH.J() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            jI = g1.x(y1VarH, false).I();
        } else {
            if (s1VarZ.size() != 5) {
                throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
            }
            jI = -1;
        }
        this.d = jI;
        if (s1Var.size() == 3) {
            this.i = ci.f(m1.x(y1.H(s1Var.A(2)), true).z());
        } else {
            this.i = null;
        }
    }
}
