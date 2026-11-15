package defpackage;

public final class dsi {
    public final Object a;
    public final int b;

    public dsi(Object obj, int i) {
        this.a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dsi)) {
            return false;
        }
        dsi dsiVar = (dsi) obj;
        return this.a == dsiVar.a && this.b == dsiVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
