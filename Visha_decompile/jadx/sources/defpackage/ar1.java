package defpackage;

import java.io.IOException;

public class ar1 extends t1 {
    public int e;

    public ar1() {
        this.e = -1;
    }

    private int D() {
        if (this.e < 0) {
            int length = this.b.length;
            int iQ = 0;
            for (int i = 0; i < length; i++) {
                iQ += this.b[i].j().v().q(true);
            }
            this.e = iQ;
        }
        return this.e;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 49);
        xq1 xq1VarE = o1Var.e();
        int length = this.b.length;
        int i = 0;
        if (this.e >= 0 || length > 16) {
            o1Var.k(D());
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
        this.e = iQ;
        o1Var.k(iQ);
        while (i < length) {
            xq1VarE.w(p1VarArr[i], true);
            i++;
        }
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, D());
    }

    @Override
    public p1 v() {
        return this;
    }

    public ar1(y0 y0Var) {
        super(y0Var, false);
        this.e = -1;
    }

    public ar1(boolean z, x0[] x0VarArr) {
        super(z, x0VarArr);
        this.e = -1;
    }

    public ar1(x0[] x0VarArr, x0[] x0VarArr2) {
        super(x0VarArr, x0VarArr2);
        this.e = -1;
    }
}
