package defpackage;

public final class xb6 {
    public final int a;
    public final boolean b;

    public xb6(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final int a() {
        return this.a;
    }

    public final boolean b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xb6)) {
            return false;
        }
        xb6 xb6Var = (xb6) obj;
        return this.a == xb6Var.a && this.b == xb6Var.b;
    }

    public int hashCode() {
        return (Integer.hashCode(this.a) * 31) + Boolean.hashCode(this.b);
    }

    public String toString() {
        return "MediaBucketRequestInput(flag=" + this.a + ", needFilter=" + this.b + ")";
    }
}
