package defpackage;

import java.math.BigInteger;

public class gn8 extends j1 {
    public static final oa f;
    public static final oa g;
    public static final g1 h;
    public static final g1 i;
    public oa b;
    public oa c;
    public g1 d;
    public g1 e;

    static {
        oa oaVar = new oa(n47.i, up1.c);
        f = oaVar;
        g = new oa(yu7.N1, oaVar);
        h = new g1(20L);
        i = new g1(1L);
    }

    public gn8(s1 s1Var) {
        this.b = f;
        this.c = g;
        this.d = h;
        this.e = i;
        for (int i2 = 0; i2 != s1Var.size(); i2++) {
            y1 y1Var = (y1) s1Var.A(i2);
            int iJ = y1Var.J();
            if (iJ == 0) {
                this.b = oa.n(y1Var, true);
            } else if (iJ == 1) {
                this.c = oa.n(y1Var, true);
            } else if (iJ == 2) {
                this.d = g1.x(y1Var, true);
            } else {
                if (iJ != 3) {
                    throw new IllegalArgumentException("unknown tag");
                }
                this.e = g1.x(y1Var, true);
            }
        }
    }

    public static gn8 n(Object obj) {
        if (obj instanceof gn8) {
            return (gn8) obj;
        }
        if (obj != null) {
            return new gn8(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(4);
        if (!this.b.equals(f)) {
            y0Var.a(new dq1(true, 0, this.b));
        }
        if (!this.c.equals(g)) {
            y0Var.a(new dq1(true, 1, this.c));
        }
        if (!this.d.s(h)) {
            y0Var.a(new dq1(true, 2, this.d));
        }
        if (!this.e.s(i)) {
            y0Var.a(new dq1(true, 3, this.e));
        }
        return new aq1(y0Var);
    }

    public oa m() {
        return this.b;
    }

    public oa o() {
        return this.c;
    }

    public BigInteger p() {
        return this.d.A();
    }

    public gn8(oa oaVar, oa oaVar2, g1 g1Var, g1 g1Var2) {
        this.b = oaVar;
        this.c = oaVar2;
        this.d = g1Var;
        this.e = g1Var2;
    }
}
