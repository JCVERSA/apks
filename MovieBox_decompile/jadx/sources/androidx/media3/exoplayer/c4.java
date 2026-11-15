package androidx.media3.exoplayer;

public final class c4 {

    public static final c4 f11030c;

    public static final c4 f11031d;

    public static final c4 f11032e;

    public static final c4 f11033f;

    public static final c4 f11034g;

    public final long f11035a;

    public final long f11036b;

    static {
        c4 c4Var = new c4(0L, 0L);
        f11030c = c4Var;
        f11031d = new c4(Long.MAX_VALUE, Long.MAX_VALUE);
        f11032e = new c4(Long.MAX_VALUE, 0L);
        f11033f = new c4(0L, Long.MAX_VALUE);
        f11034g = c4Var;
    }

    public c4(long j10, long j11) {
        androidx.media3.common.util.a.a(j10 >= 0);
        androidx.media3.common.util.a.a(j11 >= 0);
        this.f11035a = j10;
        this.f11036b = j11;
    }

    public long a(long j10, long j11, long j12) {
        long j13 = this.f11035a;
        if (j13 == 0 && this.f11036b == 0) {
            return j10;
        }
        long jS1 = androidx.media3.common.util.a1.s1(j10, j13, Long.MIN_VALUE);
        long jC = androidx.media3.common.util.a1.c(j10, this.f11036b, Long.MAX_VALUE);
        boolean z10 = false;
        boolean z11 = jS1 <= j11 && j11 <= jC;
        if (jS1 <= j12 && j12 <= jC) {
            z10 = true;
        }
        if (z11 && z10) {
            return Math.abs(j11 - j10) <= Math.abs(j12 - j10) ? j11 : j12;
        }
        if (z11) {
            return j11;
        }
        return z10 ? j12 : jS1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c4.class != obj.getClass()) {
            return false;
        }
        c4 c4Var = (c4) obj;
        return this.f11035a == c4Var.f11035a && this.f11036b == c4Var.f11036b;
    }

    public int hashCode() {
        return (((int) this.f11035a) * 31) + ((int) this.f11036b);
    }
}
