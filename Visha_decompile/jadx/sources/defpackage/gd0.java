package defpackage;

public class gd0 extends j1 {
    public u0 b;
    public g1 c;

    public gd0(s1 s1Var) {
        this.b = u0.z(false);
        this.c = null;
        if (s1Var.size() == 0) {
            this.b = null;
            this.c = null;
            return;
        }
        if (s1Var.A(0) instanceof u0) {
            this.b = u0.y(s1Var.A(0));
        } else {
            this.b = null;
            this.c = g1.y(s1Var.A(0));
        }
        if (s1Var.size() > 1) {
            if (this.b == null) {
                throw new IllegalArgumentException("wrong sequence in constructor");
            }
            this.c = g1.y(s1Var.A(1));
        }
    }

    public static gd0 m(Object obj) {
        if (obj instanceof gd0) {
            return (gd0) obj;
        }
        if (obj != null) {
            return new gd0(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        u0 u0Var = this.b;
        if (u0Var != null) {
            y0Var.a(u0Var);
        }
        g1 g1Var = this.c;
        if (g1Var != null) {
            y0Var.a(g1Var);
        }
        return new aq1(y0Var);
    }

    public g1 n() {
        return this.c;
    }

    public boolean o() {
        u0 u0Var = this.b;
        return u0Var != null && u0Var.A();
    }

    public String toString() {
        StringBuilder sb;
        if (this.c == null) {
            sb = new StringBuilder();
            sb.append("BasicConstraints: isCa(");
            sb.append(o());
            sb.append(")");
        } else {
            sb = new StringBuilder();
            sb.append("BasicConstraints: isCa(");
            sb.append(o());
            sb.append("), pathLenConstraint = ");
            sb.append(this.c.A());
        }
        return sb.toString();
    }
}
