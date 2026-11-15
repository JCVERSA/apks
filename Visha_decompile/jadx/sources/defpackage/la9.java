package defpackage;

public final class la9 {
    public static final la9 c = new la9(0, 0);
    public final long a;
    public final long b;

    public la9(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || la9.class != obj.getClass()) {
            return false;
        }
        la9 la9Var = (la9) obj;
        return this.a == la9Var.a && this.b == la9Var.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }

    public String toString() {
        return "[timeUs=" + this.a + ", position=" + this.b + "]";
    }
}
