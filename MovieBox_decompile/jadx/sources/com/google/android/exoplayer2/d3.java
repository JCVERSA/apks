package com.google.android.exoplayer2;

public final class d3 {

    public static final d3 f24194c;

    public static final d3 f24195d;

    public static final d3 f24196e;

    public static final d3 f24197f;

    public static final d3 f24198g;

    public final long f24199a;

    public final long f24200b;

    static {
        d3 d3Var = new d3(0L, 0L);
        f24194c = d3Var;
        f24195d = new d3(Long.MAX_VALUE, Long.MAX_VALUE);
        f24196e = new d3(Long.MAX_VALUE, 0L);
        f24197f = new d3(0L, Long.MAX_VALUE);
        f24198g = d3Var;
    }

    public d3(long j10, long j11) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        this.f24199a = j10;
        this.f24200b = j11;
    }

    public long a(long j10, long j11, long j12) {
        long j13 = this.f24199a;
        if (j13 == 0 && this.f24200b == 0) {
            return j10;
        }
        long jW0 = com.google.android.exoplayer2.util.p0.W0(j10, j13, Long.MIN_VALUE);
        long jB = com.google.android.exoplayer2.util.p0.b(j10, this.f24200b, Long.MAX_VALUE);
        boolean z10 = false;
        boolean z11 = jW0 <= j11 && j11 <= jB;
        if (jW0 <= j12 && j12 <= jB) {
            z10 = true;
        }
        if (z11 && z10) {
            return Math.abs(j11 - j10) <= Math.abs(j12 - j10) ? j11 : j12;
        }
        if (z11) {
            return j11;
        }
        return z10 ? j12 : jW0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d3.class != obj.getClass()) {
            return false;
        }
        d3 d3Var = (d3) obj;
        return this.f24199a == d3Var.f24199a && this.f24200b == d3Var.f24200b;
    }

    public int hashCode() {
        return (((int) this.f24199a) * 31) + ((int) this.f24200b);
    }
}
