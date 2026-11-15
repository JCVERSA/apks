package defpackage;

import java.io.IOException;

public class yq1 extends s1 {
    public int d;

    public yq1() {
        this.d = -1;
    }

    private int H() {
        if (this.d < 0) {
            int length = this.b.length;
            int iQ = 0;
            for (int i = 0; i < length; i++) {
                iQ += this.b[i].j().v().q(true);
            }
            this.d = iQ;
        }
        return this.d;
    }

    @Override
    public s0 C() {
        return new sq1(g40.C(w()), false);
    }

    @Override
    public a1 D() {
        return new uq1(this);
    }

    @Override
    public m1 E() {
        return new wp1(j40.B(x()));
    }

    @Override
    public t1 F() {
        return new ar1(false, G());
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 48);
        xq1 xq1VarE = o1Var.e();
        int length = this.b.length;
        int i = 0;
        if (this.d >= 0 || length > 16) {
            o1Var.k(H());
            while (i < length) {
                xq1VarE.w(this.b[i].j(), true);
                i++;
            }
            return;
        }
        p1[] p1VarArr = new p1[length];
        int iQ = 0;
        for (int i2 = 0; i2 < length; i2++) {
            p1 p1VarV = this.b[i2].j().v();
            p1VarArr[i2] = p1VarV;
            iQ += p1VarV.q(true);
        }
        this.d = iQ;
        o1Var.k(iQ);
        while (i < length) {
            xq1VarE.w(p1VarArr[i], true);
            i++;
        }
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, H());
    }

    @Override
    public p1 v() {
        return this;
    }

    public yq1(x0 x0Var) {
        super(x0Var);
        this.d = -1;
    }

    public yq1(y0 y0Var) {
        super(y0Var);
        this.d = -1;
    }

    public yq1(x0[] x0VarArr, boolean z) {
        super(x0VarArr, z);
        this.d = -1;
    }
}
