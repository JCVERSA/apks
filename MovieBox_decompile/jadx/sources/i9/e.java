package i9;

import com.mbridge.msdk.playercommon.exoplayer2.C;

public class e implements b0 {

    private final long f61898a;

    private final long f61899b;

    private final int f61900c;

    private final long f61901d;

    private final int f61902e;

    private final long f61903f;

    private final boolean f61904g;

    public e(long j10, long j11, int i10, int i11, boolean z10) {
        this.f61898a = j10;
        this.f61899b = j11;
        this.f61900c = i11 == -1 ? 1 : i11;
        this.f61902e = i10;
        this.f61904g = z10;
        if (j10 == -1) {
            this.f61901d = -1L;
            this.f61903f = C.TIME_UNSET;
        } else {
            this.f61901d = j10 - j11;
            this.f61903f = d(j10, j11, i10);
        }
    }

    private long b(long j10) {
        long j11 = (j10 * ((long) this.f61902e)) / 8000000;
        int i10 = this.f61900c;
        long jMin = (j11 / ((long) i10)) * ((long) i10);
        long j12 = this.f61901d;
        if (j12 != -1) {
            jMin = Math.min(jMin, j12 - ((long) i10));
        }
        return this.f61899b + Math.max(jMin, 0L);
    }

    private static long d(long j10, long j11, int i10) {
        return (Math.max(0L, j10 - j11) * 8000000) / ((long) i10);
    }

    public long c(long j10) {
        return d(j10, this.f61899b, this.f61902e);
    }

    @Override
    public long getDurationUs() {
        return this.f61903f;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        if (this.f61901d == -1 && !this.f61904g) {
            return new b0.a(new c0(0L, this.f61899b));
        }
        long jB = b(j10);
        long jC = c(jB);
        c0 c0Var = new c0(jC, jB);
        if (this.f61901d != -1 && jC < j10) {
            int i10 = this.f61900c;
            if (((long) i10) + jB < this.f61898a) {
                long j11 = jB + ((long) i10);
                return new b0.a(c0Var, new c0(c(j11), j11));
            }
        }
        return new b0.a(c0Var);
    }

    @Override
    public boolean isSeekable() {
        return this.f61901d != -1 || this.f61904g;
    }
}
