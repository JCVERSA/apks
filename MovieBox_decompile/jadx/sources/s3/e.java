package s3;

import androidx.media3.common.util.a1;
import k2.m0;
import k2.n0;

final class e implements m0 {

    private final c f71521a;

    private final int f71522b;

    private final long f71523c;

    private final long f71524d;

    private final long f71525e;

    public e(c cVar, int i10, long j10, long j11) {
        this.f71521a = cVar;
        this.f71522b = i10;
        this.f71523c = j10;
        long j12 = (j11 - j10) / ((long) cVar.f71516e);
        this.f71524d = j12;
        this.f71525e = b(j12);
    }

    private long b(long j10) {
        return a1.e1(j10 * ((long) this.f71522b), 1000000L, this.f71521a.f71514c);
    }

    @Override
    public long getDurationUs() {
        return this.f71525e;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        long jQ = a1.q((((long) this.f71521a.f71514c) * j10) / (((long) this.f71522b) * 1000000), 0L, this.f71524d - 1);
        long j11 = this.f71523c + (((long) this.f71521a.f71516e) * jQ);
        long jB = b(jQ);
        n0 n0Var = new n0(jB, j11);
        if (jB >= j10 || jQ == this.f71524d - 1) {
            return new m0.a(n0Var);
        }
        long j12 = jQ + 1;
        return new m0.a(n0Var, new n0(b(j12), this.f71523c + (((long) this.f71521a.f71516e) * j12)));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
