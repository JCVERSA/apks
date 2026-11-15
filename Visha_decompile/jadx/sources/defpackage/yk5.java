package defpackage;

public final class yk5 implements od7, pn9 {
    public final mc7 a;

    public yk5(mc7 mc7Var) {
        zd8.a(mc7Var, "observable == null");
        this.a = mc7Var;
    }

    @Override
    public ld7 a(mc7 mc7Var) {
        return mc7Var.f0(this.a);
    }

    @Override
    public mn9 b(xm9 xm9Var) {
        return xm9Var.t(this.a.v());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yk5.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((yk5) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "LifecycleTransformer{observable=" + this.a + '}';
    }
}
