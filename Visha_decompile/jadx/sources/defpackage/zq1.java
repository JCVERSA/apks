package defpackage;

import java.io.IOException;

public class zq1 implements x0, yy4 {
    public u1 b;

    public zq1(u1 u1Var) {
        this.b = u1Var;
    }

    @Override
    public p1 b() {
        return vq1.a(this.b.h());
    }

    @Override
    public p1 j() {
        try {
            return b();
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
