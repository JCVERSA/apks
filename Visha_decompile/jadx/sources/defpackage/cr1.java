package defpackage;

import java.io.IOException;

public class cr1 extends y1 {
    public cr1(int i, int i2, int i3, x0 x0Var) {
        super(i, i2, i3, x0Var);
    }

    @Override
    public s1 P(p1 p1Var) {
        return new yq1(p1Var);
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        p1 p1VarV = this.e.j().v();
        boolean zN = N();
        if (z) {
            int i = this.c;
            if (zN || p1VarV.o()) {
                i |= 32;
            }
            o1Var.t(true, i, this.d);
        }
        if (zN) {
            o1Var.k(p1VarV.q(true));
        }
        p1VarV.n(o1Var.e(), zN);
    }

    @Override
    public boolean o() {
        return N() || this.e.j().v().o();
    }

    @Override
    public int q(boolean z) {
        p1 p1VarV = this.e.j().v();
        boolean zN = N();
        int iQ = p1VarV.q(zN);
        if (zN) {
            iQ += o1.f(iQ);
        }
        return iQ + (z ? o1.h(this.d) : 0);
    }

    @Override
    public p1 v() {
        return this;
    }

    public cr1(boolean z, int i, x0 x0Var) {
        super(z, i, x0Var);
    }
}
