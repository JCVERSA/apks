package defpackage;

import java.io.OutputStream;

public class yp1 extends xq1 {
    public yp1(OutputStream outputStream) {
        super(outputStream);
    }

    @Override
    public yp1 d() {
        return this;
    }

    @Override
    public void l(x0[] x0VarArr) {
        for (x0 x0Var : x0VarArr) {
            x0Var.j().u().n(this, true);
        }
    }

    @Override
    public void w(p1 p1Var, boolean z) {
        p1Var.u().n(this, z);
    }

    @Override
    public void x(p1[] p1VarArr) {
        for (p1 p1Var : p1VarArr) {
            p1Var.u().n(this, true);
        }
    }
}
