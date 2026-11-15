package defpackage;

import java.util.Enumeration;

public class og8 extends j1 {
    public g1 b;
    public oa c;
    public m1 d;
    public t1 e;
    public s0 f;

    public og8(s1 s1Var) {
        Enumeration enumerationB = s1Var.B();
        g1 g1VarY = g1.y(enumerationB.nextElement());
        this.b = g1VarY;
        int iS = s(g1VarY);
        this.c = oa.o(enumerationB.nextElement());
        this.d = m1.y(enumerationB.nextElement());
        int i = -1;
        while (enumerationB.hasMoreElements()) {
            y1 y1Var = (y1) enumerationB.nextElement();
            int iJ = y1Var.J();
            if (iJ <= i) {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
            if (iJ == 0) {
                this.e = t1.x(y1Var, false);
            } else {
                if (iJ != 1) {
                    throw new IllegalArgumentException("unknown optional field in private key info");
                }
                if (iS < 1) {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                this.f = s0.y(y1Var, false);
            }
            i = iJ;
        }
    }

    public static og8 n(Object obj) {
        if (obj instanceof og8) {
            return (og8) obj;
        }
        if (obj != null) {
            return new og8(s1.z(obj));
        }
        return null;
    }

    public static int s(g1 g1Var) {
        int iF = g1Var.F();
        if (iF < 0 || iF > 1) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        return iF;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(5);
        y0Var.a(this.b);
        y0Var.a(this.c);
        y0Var.a(this.d);
        t1 t1Var = this.e;
        if (t1Var != null) {
            y0Var.a(new dq1(false, 0, t1Var));
        }
        s0 s0Var = this.f;
        if (s0Var != null) {
            y0Var.a(new dq1(false, 1, s0Var));
        }
        return new aq1(y0Var);
    }

    public t1 m() {
        return this.e;
    }

    public m1 o() {
        return new wp1(this.d.z());
    }

    public oa p() {
        return this.c;
    }

    public int q() {
        return this.d.A();
    }

    public s0 r() {
        return this.f;
    }

    public boolean t() {
        return this.f != null;
    }

    public x0 u() {
        return p1.t(this.d.z());
    }

    public og8(oa oaVar, x0 x0Var) {
        this(oaVar, x0Var, null, null);
    }

    public og8(oa oaVar, x0 x0Var, t1 t1Var) {
        this(oaVar, x0Var, t1Var, null);
    }

    public og8(oa oaVar, x0 x0Var, t1 t1Var, byte[] bArr) {
        this.b = new g1(bArr != null ? ge0.b : ge0.a);
        this.c = oaVar;
        this.d = new wp1(x0Var);
        this.e = t1Var;
        this.f = bArr == null ? null : new np1(bArr);
    }
}
