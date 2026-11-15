package defpackage;

public final class q30 {
    public final int a;
    public final float b;

    public q30(int i, float f) {
        this.a = i;
        this.b = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q30.class != obj.getClass()) {
            return false;
        }
        q30 q30Var = (q30) obj;
        return this.a == q30Var.a && Float.compare(q30Var.b, this.b) == 0;
    }

    public int hashCode() {
        return ((527 + this.a) * 31) + Float.floatToIntBits(this.b);
    }
}
