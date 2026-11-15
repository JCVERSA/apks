package androidx.media3.exoplayer;

public final class z3 {

    public static final z3 f13086c = new z3(0, false);

    public final int f13087a;

    public final boolean f13088b;

    public z3(int i10, boolean z10) {
        this.f13087a = i10;
        this.f13088b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z3.class != obj.getClass()) {
            return false;
        }
        z3 z3Var = (z3) obj;
        return this.f13087a == z3Var.f13087a && this.f13088b == z3Var.f13088b;
    }

    public int hashCode() {
        return (this.f13087a << 1) + (this.f13088b ? 1 : 0);
    }
}
