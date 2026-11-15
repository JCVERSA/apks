package defpackage;

public class wy4 implements to8, wha {
    public final qw0 a;
    public final wy4 b;
    public final qw0 c;

    public wy4(qw0 qw0Var, wy4 wy4Var) {
        y45.j(qw0Var, "classDescriptor");
        this.a = qw0Var;
        this.b = wy4Var == null ? this : wy4Var;
        this.c = qw0Var;
    }

    @Override
    public sm9 getType() {
        sm9 sm9VarQ = this.a.q();
        y45.i(sm9VarQ, "classDescriptor.defaultType");
        return sm9VarQ;
    }

    public boolean equals(Object obj) {
        qw0 qw0Var = this.a;
        wy4 wy4Var = obj instanceof wy4 ? (wy4) obj : null;
        return y45.e(qw0Var, wy4Var != null ? wy4Var.a : null);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final qw0 k() {
        return this.a;
    }

    public String toString() {
        return "Class{" + getType() + '}';
    }
}
