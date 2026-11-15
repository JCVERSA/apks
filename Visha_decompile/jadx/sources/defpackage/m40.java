package defpackage;

import java.io.IOException;

public class m40 implements x0, yy4 {
    public u1 b;

    public m40(u1 u1Var) {
        this.b = u1Var;
    }

    public static l40 a(u1 u1Var) {
        return new l40(u1Var.h());
    }

    @Override
    public p1 b() {
        return a(this.b);
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
