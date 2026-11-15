package defpackage;

import java.io.IOException;

public abstract class y1 extends p1 implements x0, yy4 {
    public final int b;
    public final int c;
    public final int d;
    public final x0 e;

    public y1(int i, int i2, int i3, x0 x0Var) {
        if (x0Var == null) {
            throw new NullPointerException("'obj' cannot be null");
        }
        if (i2 == 0 || (i2 & 192) != i2) {
            throw new IllegalArgumentException("invalid tag class: " + i2);
        }
        this.b = x0Var instanceof v0 ? 1 : i;
        this.c = i2;
        this.d = i3;
        this.e = x0Var;
    }

    public static p1 A(int i, int i2, byte[] bArr) {
        return new cr1(4, i, i2, new wp1(bArr));
    }

    public static y1 G(y1 y1Var, boolean z) {
        return f2.d(w(y1Var, z));
    }

    public static y1 H(Object obj) {
        if (obj == null || (obj instanceof y1)) {
            return (y1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof y1) {
                return (y1) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return x(p1.t((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct tagged object from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public static y1 w(y1 y1Var, boolean z) {
        if (!z) {
            throw new IllegalArgumentException("this method not valid for implicitly tagged tagged objects");
        }
        if (y1Var != null) {
            return y1Var;
        }
        throw new NullPointerException("'taggedObject' cannot be null");
    }

    public static y1 x(p1 p1Var) {
        if (p1Var instanceof y1) {
            return (y1) p1Var;
        }
        throw new IllegalStateException("unexpected object: " + p1Var.getClass().getName());
    }

    public static p1 y(int i, int i2, y0 y0Var) {
        return y0Var.f() == 1 ? new cr1(3, i, i2, y0Var.d(0)) : new cr1(4, i, i2, vq1.a(y0Var));
    }

    public static p1 z(int i, int i2, y0 y0Var) {
        return y0Var.f() == 1 ? new p40(3, i, i2, y0Var.d(0)) : new p40(4, i, i2, i40.a(y0Var));
    }

    public j1 B() {
        x0 x0Var = this.e;
        return x0Var instanceof j1 ? (j1) x0Var : x0Var.j();
    }

    public p1 C(boolean z, int i) {
        d2 d2VarA = e2.a(i);
        if (d2VarA != null) {
            return D(z, d2VarA);
        }
        throw new IllegalArgumentException("unsupported UNIVERSAL tag number: " + i);
    }

    public p1 D(boolean z, d2 d2Var) {
        if (z) {
            if (N()) {
                return d2Var.a(this.e.j());
            }
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        if (1 == this.b) {
            throw new IllegalStateException("object explicit - implicit expected.");
        }
        p1 p1VarJ = this.e.j();
        int i = this.b;
        if (i == 3) {
            return d2Var.c(P(p1VarJ));
        }
        if (i != 4) {
            return d2Var.a(p1VarJ);
        }
        return p1VarJ instanceof s1 ? d2Var.c((s1) p1VarJ) : d2Var.d((wp1) p1VarJ);
    }

    public j1 E() {
        if (!N()) {
            throw new IllegalStateException("object implicit - explicit expected.");
        }
        x0 x0Var = this.e;
        return x0Var instanceof j1 ? (j1) x0Var : x0Var.j();
    }

    public y1 F() {
        if (N()) {
            return x(this.e.j());
        }
        throw new IllegalStateException("object implicit - explicit expected.");
    }

    public int I() {
        return this.c;
    }

    public int J() {
        return this.d;
    }

    public boolean K() {
        return this.c == 128;
    }

    public boolean L(int i) {
        return this.c == 128 && this.d == i;
    }

    public boolean M(int i) {
        return this.c == i;
    }

    public boolean N() {
        int i = this.b;
        return i == 1 || i == 3;
    }

    public boolean O() {
        int i = this.b;
        return i == 3 || i == 4;
    }

    public abstract s1 P(p1 p1Var);

    @Override
    public final p1 b() {
        return this;
    }

    @Override
    public int hashCode() {
        return this.e.j().hashCode() ^ (((this.c * 7919) ^ this.d) ^ (N() ? 15 : 240));
    }

    @Override
    public final boolean m(p1 p1Var) {
        if (!(p1Var instanceof y1)) {
            return false;
        }
        y1 y1Var = (y1) p1Var;
        if (this.d != y1Var.d || this.c != y1Var.c) {
            return false;
        }
        if (this.b != y1Var.b && N() != y1Var.N()) {
            return false;
        }
        p1 p1VarJ = this.e.j();
        p1 p1VarJ2 = y1Var.e.j();
        if (p1VarJ == p1VarJ2) {
            return true;
        }
        if (N()) {
            return p1VarJ.m(p1VarJ2);
        }
        try {
            return ci.b(getEncoded(), y1Var.getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    public String toString() {
        return f2.g(this.c, this.d) + this.e;
    }

    @Override
    public p1 u() {
        return new dq1(this.b, this.c, this.d, this.e);
    }

    @Override
    public p1 v() {
        return new cr1(this.b, this.c, this.d, this.e);
    }

    public y1(boolean z, int i, int i2, x0 x0Var) {
        this(z ? 1 : 2, i, i2, x0Var);
    }

    public y1(boolean z, int i, x0 x0Var) {
        this(z, 128, i, x0Var);
    }
}
