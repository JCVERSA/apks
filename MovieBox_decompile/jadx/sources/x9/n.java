package x9;

import com.google.android.exoplayer2.p1;

public abstract class n extends f {

    public final long f75235j;

    public n(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, long j10, long j11, long j12) {
        super(kVar, nVar, 1, p1Var, i10, obj, j10, j11);
        com.google.android.exoplayer2.util.a.e(p1Var);
        this.f75235j = j12;
    }

    public long e() {
        long j10 = this.f75235j;
        if (j10 != -1) {
            return 1 + j10;
        }
        return -1L;
    }

    public abstract boolean f();
}
