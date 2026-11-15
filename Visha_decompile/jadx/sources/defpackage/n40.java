package defpackage;

import java.io.IOException;

public class n40 extends t1 {
    public n40() {
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.r(z, 49, this.b);
    }

    @Override
    public int q(boolean z) {
        int iQ = z ? 4 : 3;
        int length = this.b.length;
        for (int i = 0; i < length; i++) {
            iQ += this.b[i].j().q(true);
        }
        return iQ;
    }

    public n40(y0 y0Var) {
        super(y0Var, false);
    }

    public n40(boolean z, x0[] x0VarArr) {
        super(z, x0VarArr);
    }
}
