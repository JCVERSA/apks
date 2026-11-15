package o0;

public abstract class u {
    public static final long a(int i10, int i11) {
        return t.c((((long) i11) & 4294967295L) | (((long) i10) << 32));
    }

    public static final long b(long j10) {
        return p.c((((j10 << 32) >> 33) & 4294967295L) | ((j10 >> 33) << 32));
    }

    public static final long c(long j10) {
        int iRound = Math.round(y.m.i(j10));
        return t.c((((long) Math.round(y.m.g(j10))) & 4294967295L) | (((long) iRound) << 32));
    }

    public static final long d(long j10) {
        return y.n.a(t.g(j10), t.f(j10));
    }
}
