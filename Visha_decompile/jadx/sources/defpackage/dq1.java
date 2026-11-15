package defpackage;

import java.io.IOException;

public class dq1 extends y1 {
    public dq1(int i, int i2, int i3, x0 x0Var) {
        super(i, i2, i3, x0Var);
    }

    @Override
    public s1 P(p1 p1Var) {
        return new aq1(p1Var);
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        p1 p1VarU = this.e.j().u();
        boolean zN = N();
        if (z) {
            int i = this.c;
            if (zN || p1VarU.o()) {
                i |= 32;
            }
            o1Var.t(true, i, this.d);
        }
        if (zN) {
            o1Var.k(p1VarU.q(true));
        }
        p1VarU.n(o1Var.d(), zN);
    }

    @Override
    public boolean o() {
        return N() || this.e.j().u().o();
    }

    @Override
    public int q(boolean z) {
        p1 p1VarU = this.e.j().u();
        boolean zN = N();
        int iQ = p1VarU.q(zN);
        if (zN) {
            iQ += o1.f(iQ);
        }
        return iQ + (z ? o1.h(this.d) : 0);
    }

    @Override
    public p1 u() {
        return this;
    }

    @Override
    public p1 v() {
        return this;
    }

    public dq1(int i, x0 x0Var) {
        super(true, i, x0Var);
    }

    public dq1(boolean z, int i, x0 x0Var) {
        super(z, i, x0Var);
    }
}
