package defpackage;

import java.io.IOException;

public final class k1 extends p1 {
    public static final d2 c = new a(k1.class, 7);
    public final d1 b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return new k1((d1) d1.c.c(s1Var));
        }

        @Override
        public p1 d(wp1 wp1Var) {
            return new k1((d1) d1.c.d(wp1Var));
        }
    }

    public k1(d1 d1Var) {
        if (d1Var == null) {
            throw new NullPointerException("'baseGraphicString' cannot be null");
        }
        this.b = d1Var;
    }

    public static k1 w(byte[] bArr) {
        return new k1(d1.w(bArr));
    }

    @Override
    public int hashCode() {
        return ~this.b.hashCode();
    }

    @Override
    public boolean m(p1 p1Var) {
        if (p1Var instanceof k1) {
            return this.b.m(((k1) p1Var).b);
        }
        return false;
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 7);
        this.b.n(o1Var, false);
    }

    @Override
    public boolean o() {
        return false;
    }

    @Override
    public int q(boolean z) {
        return this.b.q(z);
    }

    @Override
    public p1 u() {
        d1 d1Var = (d1) this.b.u();
        return d1Var == this.b ? this : new k1(d1Var);
    }

    @Override
    public p1 v() {
        d1 d1Var = (d1) this.b.v();
        return d1Var == this.b ? this : new k1(d1Var);
    }

    public d1 x() {
        return this.b;
    }
}
