package defpackage;

public final class l7i {
    public final Object a;
    public final int b;

    public l7i(Object obj, int i) {
        this.a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l7i)) {
            return false;
        }
        l7i l7iVar = (l7i) obj;
        return this.a == l7iVar.a && this.b == l7iVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
