package t9;

import com.google.android.exoplayer2.util.p0;
import i9.b0;
import i9.c0;

final class e implements b0 {

    private final c f72605a;

    private final int f72606b;

    private final long f72607c;

    private final long f72608d;

    private final long f72609e;

    public e(c cVar, int i10, long j10, long j11) {
        this.f72605a = cVar;
        this.f72606b = i10;
        this.f72607c = j10;
        long j12 = (j11 - j10) / ((long) cVar.f72600e);
        this.f72608d = j12;
        this.f72609e = b(j12);
    }

    private long b(long j10) {
        return p0.N0(j10 * ((long) this.f72606b), 1000000L, this.f72605a.f72598c);
    }

    @Override
    public long getDurationUs() {
        return this.f72609e;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        long jR = p0.r((((long) this.f72605a.f72598c) * j10) / (((long) this.f72606b) * 1000000), 0L, this.f72608d - 1);
        long j11 = this.f72607c + (((long) this.f72605a.f72600e) * jR);
        long jB = b(jR);
        c0 c0Var = new c0(jB, j11);
        if (jB >= j10 || jR == this.f72608d - 1) {
            return new b0.a(c0Var);
        }
        long j12 = jR + 1;
        return new b0.a(c0Var, new c0(b(j12), this.f72607c + (((long) this.f72605a.f72600e) * j12)));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
