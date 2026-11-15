package defpackage;

public class jl implements Cloneable {
    public final x0 b;

    public jl(al alVar) {
        this.b = alVar.n();
    }

    public Object clone() {
        return new jl(al.m(this.b));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof jl) {
            return this.b.equals(((jl) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
