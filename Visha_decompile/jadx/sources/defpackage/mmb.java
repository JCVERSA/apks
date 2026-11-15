package defpackage;

public class mmb extends j1 {
    public ld4 b;
    public n55 c;
    public xb7 d;

    public mmb(s1 s1Var) {
        int i;
        if (s1Var.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        if (s1Var.A(0) instanceof y1) {
            i = 0;
        } else {
            this.b = ld4.o(s1Var.A(0));
            i = 1;
        }
        while (i != s1Var.size()) {
            y1 y1VarH = y1.H(s1Var.A(i));
            if (y1VarH.J() == 0) {
                this.c = n55.m(y1VarH, false);
            } else {
                if (y1VarH.J() != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + y1VarH.J());
                }
                this.d = xb7.m(y1VarH, false);
            }
            i++;
        }
    }

    public static mmb m(y1 y1Var, boolean z) {
        return n(s1.y(y1Var, z));
    }

    public static mmb n(Object obj) {
        if (obj instanceof mmb) {
            return (mmb) obj;
        }
        if (obj != null) {
            return new mmb(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        ld4 ld4Var = this.b;
        if (ld4Var != null) {
            y0Var.a(ld4Var);
        }
        n55 n55Var = this.c;
        if (n55Var != null) {
            y0Var.a(new dq1(false, 0, n55Var));
        }
        xb7 xb7Var = this.d;
        if (xb7Var != null) {
            y0Var.a(new dq1(false, 1, xb7Var));
        }
        return new aq1(y0Var);
    }
}
