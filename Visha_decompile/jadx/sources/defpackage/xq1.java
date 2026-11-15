package defpackage;

import java.io.OutputStream;

public class xq1 extends o1 {
    public xq1(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public xq1 e() {
        return this;
    }

    @Override
    public void l(x0[] x0VarArr) {
        for (x0 x0Var : x0VarArr) {
            x0Var.j().v().n(this, true);
        }
    }

    @Override
    public void w(p1 p1Var, boolean z) {
        p1Var.v().n(this, z);
    }

    @Override
    public void x(p1[] p1VarArr) {
        for (p1 p1Var : p1VarArr) {
            p1Var.v().n(this, true);
        }
    }
}
