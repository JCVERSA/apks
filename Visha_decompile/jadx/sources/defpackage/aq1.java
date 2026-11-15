package defpackage;

import java.io.IOException;

public class aq1 extends s1 {
    public int d;

    public aq1() {
        this.d = -1;
    }

    public static aq1 H(s1 s1Var) {
        return (aq1) s1Var.u();
    }

    @Override
    public s0 C() {
        return new np1(g40.C(w()), false);
    }

    @Override
    public a1 D() {
        return new op1(this);
    }

    @Override
    public m1 E() {
        return new wp1(j40.B(x()));
    }

    @Override
    public t1 F() {
        return new ar1(false, G());
    }

    public final int I() {
        if (this.d < 0) {
            int length = this.b.length;
            int iQ = 0;
            for (int i = 0; i < length; i++) {
                iQ += this.b[i].j().u().q(true);
            }
            this.d = iQ;
        }
        return this.d;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 48);
        yp1 yp1VarD = o1Var.d();
        int length = this.b.length;
        int i = 0;
        if (this.d >= 0 || length > 16) {
            o1Var.k(I());
            while (i < length) {
                this.b[i].j().u().n(yp1VarD, true);
                i++;
            }
            return;
        }
        p1[] p1VarArr = new p1[length];
        int iQ = 0;
        for (int i2 = 0; i2 < length; i2++) {
            p1 p1VarU = this.b[i2].j().u();
            p1VarArr[i2] = p1VarU;
            iQ += p1VarU.q(true);
        }
        this.d = iQ;
        o1Var.k(iQ);
        while (i < length) {
            p1VarArr[i].n(yp1VarD, true);
            i++;
        }
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, I());
    }

    @Override
    public p1 u() {
        return this;
    }

    @Override
    public p1 v() {
        return this;
    }

    public aq1(x0 x0Var) {
        super(x0Var);
        this.d = -1;
    }

    public aq1(y0 y0Var) {
        super(y0Var);
        this.d = -1;
    }

    public aq1(x0[] x0VarArr) {
        super(x0VarArr);
        this.d = -1;
    }

    public aq1(x0[] x0VarArr, boolean z) {
        super(x0VarArr, z);
        this.d = -1;
    }
}
