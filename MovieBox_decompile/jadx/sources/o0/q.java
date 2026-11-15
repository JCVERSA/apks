package o0;

public abstract class q {
    public static final long a(int i10, int i11) {
        return p.c((((long) i11) & 4294967295L) | (((long) i10) << 32));
    }

    public static final long b(long j10, long j11) {
        return y.h.a(y.g.m(j10) - p.h(j11), y.g.n(j10) - p.i(j11));
    }

    public static final long c(long j10, long j11) {
        return y.h.a(y.g.m(j10) + p.h(j11), y.g.n(j10) + p.i(j11));
    }

    public static final long d(long j10) {
        int iRound = Math.round(y.g.m(j10));
        return p.c((((long) Math.round(y.g.n(j10))) & 4294967295L) | (((long) iRound) << 32));
    }
}
