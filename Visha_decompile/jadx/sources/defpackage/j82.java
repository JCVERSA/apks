package defpackage;

import java.util.Enumeration;

public class j82 extends j1 {
    public final g1 b;
    public oa c;
    public cqc d;
    public s1 e;
    public cqc f;
    public s1a g;
    public gk3 h;
    public final s0 i;

    public j82(s1 s1Var) {
        this.b = g1.y(s1Var.A(0));
        x0 x0VarA = s1Var.A(1);
        int i = 1;
        while (x0VarA instanceof y1) {
            y1 y1VarH = y1.H(x0VarA);
            int iJ = y1VarH.J();
            if (iJ == 0) {
                this.c = oa.n(y1VarH, false);
            } else if (iJ == 1) {
                this.d = cqc.m(y1VarH, true);
            } else if (iJ == 2) {
                this.e = s1.y(y1VarH, false);
            } else if (iJ == 3) {
                this.f = cqc.m(y1VarH, true);
            }
            int i2 = i + 1;
            x0 x0VarA2 = s1Var.A(i);
            i = i2;
            x0VarA = x0VarA2;
        }
        this.g = s1a.n(x0VarA);
        x0 x0VarA3 = s1Var.A(i);
        while (x0VarA3 instanceof y1) {
            y1 y1VarH2 = y1.H(x0VarA3);
            if (y1VarH2.J() == 4) {
                this.h = gk3.s(y1VarH2, false);
            }
            x0 x0VarA4 = s1Var.A(i);
            i++;
            x0VarA3 = x0VarA4;
        }
        this.i = s0.z(x0VarA3);
    }

    public static j82 n(Object obj) {
        if (obj instanceof j82) {
            return (j82) obj;
        }
        if (obj != null) {
            return new j82(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(7);
        y0Var.a(this.b);
        m(y0Var, 0, false, this.c);
        m(y0Var, 1, true, this.d);
        m(y0Var, 2, false, this.e);
        m(y0Var, 3, true, this.f);
        y0Var.a(this.g);
        m(y0Var, 4, false, this.h);
        y0Var.a(this.i);
        return new aq1(y0Var);
    }

    public final void m(y0 y0Var, int i, boolean z, j1 j1Var) {
        if (j1Var != null) {
            y0Var.a(new dq1(z, i, j1Var));
        }
    }

    public j82 o(nca ncaVar, gk3 gk3Var) {
        oa oaVar = ncaVar.e;
        cqc cqcVar = ncaVar.f;
        aq1 aq1Var = new aq1(new x0[]{ncaVar.g, ncaVar.h});
        cqc cqcVar2 = ncaVar.i;
        s1 s1VarZ = s1.z(j());
        y0 y0Var = new y0();
        Enumeration enumerationB = s1VarZ.B();
        x0 x0Var = (x0) enumerationB.nextElement();
        loop0: while (true) {
            y0Var.a(x0Var);
            while (true) {
                x0Var = (x0) enumerationB.nextElement();
                if (!(x0Var instanceof y1)) {
                    break loop0;
                }
                y1 y1VarH = y1.H(x0Var);
                int iJ = y1VarH.J();
                if (iJ != 0) {
                    if (iJ != 1) {
                        if (iJ != 2) {
                            if (iJ == 3 && !cqc.m(y1VarH, true).equals(cqcVar2)) {
                                break;
                            }
                        } else if (!s1.y(y1VarH, false).s(aq1Var)) {
                            break;
                        }
                    } else if (!cqc.m(y1VarH, true).equals(cqcVar)) {
                        break;
                    }
                } else if (!oa.n(y1VarH, false).equals(oaVar)) {
                    break;
                }
            }
        }
        y0Var.a(x0Var);
        while (true) {
            x0 x0Var2 = (x0) enumerationB.nextElement();
            if (!(x0Var2 instanceof y1)) {
                y0Var.a(x0Var2);
                return new j82(new aq1(y0Var));
            }
            y1 y1VarH2 = y1.H(x0Var2);
            if (y1VarH2.J() == 4) {
                gk3 gk3VarS = gk3.s(y1VarH2, false);
                ik3 ik3Var = new ik3();
                Enumeration enumerationV = gk3VarS.v();
                while (enumerationV.hasMoreElements()) {
                    bk3 bk3VarN = gk3VarS.n((l1) enumerationV.nextElement());
                    bk3 bk3VarN2 = gk3Var.n(bk3VarN.n());
                    if (bk3VarN2 != null && !bk3VarN.equals(bk3VarN2)) {
                        ik3Var.a(bk3VarN);
                    }
                }
                if (!ik3Var.e()) {
                    y0Var.a(new dq1(false, 4, ik3Var.b()));
                }
            }
        }
    }
}
