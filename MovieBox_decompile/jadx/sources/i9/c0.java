package i9;

public final class c0 {

    public static final c0 f61889c = new c0(0, 0);

    public final long f61890a;

    public final long f61891b;

    public c0(long j10, long j11) {
        this.f61890a = j10;
        this.f61891b = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f61890a == c0Var.f61890a && this.f61891b == c0Var.f61891b;
    }

    public int hashCode() {
        return (((int) this.f61890a) * 31) + ((int) this.f61891b);
    }

    public String toString() {
        return "[timeUs=" + this.f61890a + ", position=" + this.f61891b + "]";
    }
}
