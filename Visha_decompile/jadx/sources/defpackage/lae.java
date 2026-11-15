package defpackage;

public final class lae {
    public static final lae c = new lae(0, 0);
    public final long a;
    public final long b;

    public lae(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && lae.class == obj.getClass()) {
            lae laeVar = (lae) obj;
            if (this.a == laeVar.a && this.b == laeVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }

    public final String toString() {
        return "[timeUs=" + this.a + ", position=" + this.b + "]";
    }
}
