package defpackage;

public final class ka9 {
    public static final ka9 c;
    public static final ka9 d;
    public static final ka9 e;
    public static final ka9 f;
    public static final ka9 g;
    public final long a;
    public final long b;

    static {
        ka9 ka9Var = new ka9(0L, 0L);
        c = ka9Var;
        d = new ka9(Long.MAX_VALUE, Long.MAX_VALUE);
        e = new ka9(Long.MAX_VALUE, 0L);
        f = new ka9(0L, Long.MAX_VALUE);
        g = ka9Var;
    }

    public ka9(long j, long j2) {
        zi.a(j >= 0);
        zi.a(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public long a(long j, long j2, long j3) {
        long j4 = this.a;
        if (j4 == 0 && this.b == 0) {
            return j;
        }
        long jI0 = blb.I0(j, j4, Long.MIN_VALUE);
        long jB = blb.b(j, this.b, Long.MAX_VALUE);
        boolean z = false;
        boolean z2 = jI0 <= j2 && j2 <= jB;
        if (jI0 <= j3 && j3 <= jB) {
            z = true;
        }
        if (z2 && z) {
            return Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
        }
        if (z2) {
            return j2;
        }
        return z ? j3 : jI0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ka9.class != obj.getClass()) {
            return false;
        }
        ka9 ka9Var = (ka9) obj;
        return this.a == ka9Var.a && this.b == ka9Var.b;
    }

    public int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
