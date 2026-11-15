package defpackage;

import java.io.IOException;

public abstract class a1 extends p1 {
    public static final d2 g = new a(a1.class, 8);
    public l1 b;
    public g1 c;
    public p1 d;
    public int e;
    public p1 f;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return s1Var.D();
        }
    }

    public a1(l1 l1Var, g1 g1Var, p1 p1Var, int i, p1 p1Var2) {
        this.b = l1Var;
        this.c = g1Var;
        this.d = p1Var;
        this.e = x(i);
        this.f = y(i, p1Var2);
    }

    public static p1 D(y1 y1Var) {
        f2.a(y1Var);
        int iJ = y1Var.J();
        if (iJ == 0) {
            return y1Var.E().j();
        }
        if (iJ == 1) {
            return m1.x(y1Var, false);
        }
        if (iJ == 2) {
            return s0.y(y1Var, false);
        }
        throw new IllegalArgumentException("invalid tag: " + f2.h(y1Var));
    }

    public static p1 F(s1 s1Var, int i) {
        if (s1Var.size() > i) {
            return s1Var.A(i).j();
        }
        throw new IllegalArgumentException("too few objects in input sequence");
    }

    public static int x(int i) {
        if (i >= 0 && i <= 2) {
            return i;
        }
        throw new IllegalArgumentException("invalid encoding value: " + i);
    }

    public static p1 y(int i, p1 p1Var) {
        d2 d2Var;
        if (i == 1) {
            d2Var = m1.c;
        } else {
            if (i != 2) {
                return p1Var;
            }
            d2Var = s0.c;
        }
        return d2Var.a(p1Var);
    }

    public l1 A() {
        return this.b;
    }

    public int B() {
        return this.e;
    }

    public p1 C() {
        return this.f;
    }

    public g1 E() {
        return this.c;
    }

    @Override
    public int hashCode() {
        return this.f.hashCode() ^ (((lc7.b(this.b) ^ lc7.b(this.c)) ^ lc7.b(this.d)) ^ this.e);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (this == p1Var) {
            return true;
        }
        if (!(p1Var instanceof a1)) {
            return false;
        }
        a1 a1Var = (a1) p1Var;
        return lc7.a(this.b, a1Var.b) && lc7.a(this.c, a1Var.c) && lc7.a(this.d, a1Var.d) && this.e == a1Var.e && this.f.s(a1Var.f);
    }

    @Override
    public void n(o1 o1Var, boolean z) throws IOException {
        o1Var.s(z, 40);
        w().n(o1Var, false);
    }

    @Override
    public boolean o() {
        return true;
    }

    @Override
    public int q(boolean z) {
        return w().q(z);
    }

    @Override
    public p1 u() {
        return new op1(this.b, this.c, this.d, this.e, this.f);
    }

    public abstract s1 w();

    public p1 z() {
        return this.d;
    }

    public a1(s1 s1Var) {
        int i = 0;
        p1 p1VarF = F(s1Var, 0);
        if (p1VarF instanceof l1) {
            this.b = (l1) p1VarF;
            p1VarF = F(s1Var, 1);
            i = 1;
        }
        if (p1VarF instanceof g1) {
            this.c = (g1) p1VarF;
            i++;
            p1VarF = F(s1Var, i);
        }
        if (!(p1VarF instanceof y1)) {
            this.d = p1VarF;
            i++;
            p1VarF = F(s1Var, i);
        }
        if (s1Var.size() != i + 1) {
            throw new IllegalArgumentException("input sequence too large");
        }
        if (!(p1VarF instanceof y1)) {
            throw new IllegalArgumentException("No tagged object found in sequence. Structure doesn't seem to be of type External");
        }
        y1 y1Var = (y1) p1VarF;
        this.e = x(y1Var.J());
        this.f = D(y1Var);
    }
}
