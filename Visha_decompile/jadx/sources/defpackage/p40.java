package defpackage;

import java.io.IOException;

public class p40 extends y1 {
    public p40(int i, int i2, int i3, x0 x0Var) {
        super(i, i2, i3, x0Var);
    }

    @Override
    public s1 P(p1 p1Var) {
        return new l40(p1Var);
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        p1 p1VarJ = this.e.j();
        boolean zN = N();
        if (z) {
            int i = this.c;
            if (zN || p1VarJ.o()) {
                i |= 32;
            }
            o1Var.t(true, i, this.d);
        }
        if (!zN) {
            p1VarJ.n(o1Var, false);
            return;
        }
        o1Var.i(128);
        p1VarJ.n(o1Var, true);
        o1Var.i(0);
        o1Var.i(0);
    }

    @Override
    public boolean o() {
        return N() || this.e.j().o();
    }

    @Override
    public int q(boolean z) {
        p1 p1VarJ = this.e.j();
        boolean zN = N();
        int iQ = p1VarJ.q(zN);
        if (zN) {
            iQ += 3;
        }
        return iQ + (z ? o1.h(this.d) : 0);
    }

    public p40(boolean z, int i, x0 x0Var) {
        super(z, i, x0Var);
    }
}
