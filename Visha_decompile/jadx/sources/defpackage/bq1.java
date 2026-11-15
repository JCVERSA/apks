package defpackage;

import java.io.IOException;

public class bq1 extends t1 {
    public int e;

    public bq1() {
        this.e = -1;
    }

    public static boolean D(boolean z) {
        if (z) {
            return z;
        }
        throw new IllegalStateException("DERSet elements should always be in sorted order");
    }

    private int E() {
        if (this.e < 0) {
            int length = this.b.length;
            int iQ = 0;
            for (int i = 0; i < length; i++) {
                iQ += this.b[i].j().u().q(true);
            }
            this.e = iQ;
        }
        return this.e;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 49);
        yp1 yp1VarD = o1Var.d();
        int length = this.b.length;
        int i = 0;
        if (this.e >= 0 || length > 16) {
            o1Var.k(E());
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
        this.e = iQ;
        o1Var.k(iQ);
        while (i < length) {
            p1VarArr[i].n(yp1VarD, true);
            i++;
        }
    }

    @Override
    public int q(boolean z) {
        return o1.g(z, E());
    }

    @Override
    public p1 u() {
        return this.c != null ? this : super.u();
    }

    @Override
    public p1 v() {
        return this;
    }

    public bq1(x0 x0Var) {
        super(x0Var);
        this.e = -1;
    }

    public bq1(y0 y0Var) {
        super(y0Var, true);
        this.e = -1;
    }

    public bq1(boolean z, x0[] x0VarArr) {
        super(D(z), x0VarArr);
        this.e = -1;
    }

    public bq1(x0[] x0VarArr) {
        super(x0VarArr, true);
        this.e = -1;
    }
}
