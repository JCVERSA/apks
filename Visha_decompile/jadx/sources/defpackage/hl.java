package defpackage;

public class hl implements Cloneable {
    public final vr4 b;

    public hl(s1 s1Var) {
        this.b = vr4.m(s1Var);
    }

    public Object clone() {
        return new hl((s1) this.b.j());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hl) {
            return this.b.equals(((hl) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
