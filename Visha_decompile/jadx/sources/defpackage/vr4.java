package defpackage;

public class vr4 extends j1 {
    public n55 b;
    public ld4 c;
    public xb7 d;
    public int e;

    public vr4(s1 s1Var) {
        this.e = 1;
        if (s1Var.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        for (int i = 0; i != s1Var.size(); i++) {
            y1 y1VarH = y1.H(s1Var.A(i));
            int iJ = y1VarH.J();
            if (iJ == 0) {
                this.b = n55.m(y1VarH, false);
            } else if (iJ == 1) {
                this.c = ld4.n(y1VarH, false);
            } else {
                if (iJ != 2) {
                    throw new IllegalArgumentException("unknown tag in Holder");
                }
                this.d = xb7.m(y1VarH, false);
            }
        }
        this.e = 1;
    }

    public static vr4 m(Object obj) {
        if (obj instanceof vr4) {
            return (vr4) obj;
        }
        if (obj instanceof y1) {
            return new vr4(y1.H(obj));
        }
        if (obj != null) {
            return new vr4(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        if (this.e != 1) {
            ld4 ld4Var = this.c;
            return ld4Var != null ? new dq1(true, 1, ld4Var) : new dq1(true, 0, this.b);
        }
        y0 y0Var = new y0(3);
        n55 n55Var = this.b;
        if (n55Var != null) {
            y0Var.a(new dq1(false, 0, n55Var));
        }
        ld4 ld4Var2 = this.c;
        if (ld4Var2 != null) {
            y0Var.a(new dq1(false, 1, ld4Var2));
        }
        xb7 xb7Var = this.d;
        if (xb7Var != null) {
            y0Var.a(new dq1(false, 2, xb7Var));
        }
        return new aq1(y0Var);
    }

    public vr4(y1 y1Var) {
        this.e = 1;
        int iJ = y1Var.J();
        if (iJ == 0) {
            this.b = n55.m(y1Var, true);
        } else {
            if (iJ != 1) {
                throw new IllegalArgumentException("unknown tag in Holder");
            }
            this.c = ld4.n(y1Var, true);
        }
        this.e = 0;
    }
}
