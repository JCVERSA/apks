package defpackage;

import java.io.IOException;

public class l40 extends s1 {
    public l40() {
    }

    @Override
    public s0 C() {
        return new g40(w());
    }

    @Override
    public a1 D() {
        return ((s1) v()).D();
    }

    @Override
    public m1 E() {
        return new j40(x());
    }

    @Override
    public t1 F() {
        return new n40(false, G());
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.r(z, 48, this.b);
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

    public l40(x0 x0Var) {
        super(x0Var);
    }

    public l40(y0 y0Var) {
        super(y0Var);
    }
}
