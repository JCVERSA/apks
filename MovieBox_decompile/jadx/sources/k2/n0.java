package k2;

public final class n0 {

    public static final n0 f63656c = new n0(0, 0);

    public final long f63657a;

    public final long f63658b;

    public n0(long j10, long j11) {
        this.f63657a = j10;
        this.f63658b = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n0.class != obj.getClass()) {
            return false;
        }
        n0 n0Var = (n0) obj;
        return this.f63657a == n0Var.f63657a && this.f63658b == n0Var.f63658b;
    }

    public int hashCode() {
        return (((int) this.f63657a) * 31) + ((int) this.f63658b);
    }

    public String toString() {
        return "[timeUs=" + this.f63657a + ", position=" + this.f63658b + "]";
    }
}
