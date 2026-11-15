package k2;

import com.mbridge.msdk.playercommon.exoplayer2.C;

public class i implements m0 {

    private final long f63599a;

    private final long f63600b;

    private final int f63601c;

    private final long f63602d;

    private final int f63603e;

    private final long f63604f;

    private final boolean f63605g;

    public i(long j10, long j11, int i10, int i11, boolean z10) {
        this.f63599a = j10;
        this.f63600b = j11;
        this.f63601c = i11 == -1 ? 1 : i11;
        this.f63603e = i10;
        this.f63605g = z10;
        if (j10 == -1) {
            this.f63602d = -1L;
            this.f63604f = C.TIME_UNSET;
        } else {
            this.f63602d = j10 - j11;
            this.f63604f = d(j10, j11, i10);
        }
    }

    private long b(long j10) {
        long j11 = (j10 * ((long) this.f63603e)) / 8000000;
        int i10 = this.f63601c;
        long jMin = (j11 / ((long) i10)) * ((long) i10);
        long j12 = this.f63602d;
        if (j12 != -1) {
            jMin = Math.min(jMin, j12 - ((long) i10));
        }
        return this.f63600b + Math.max(jMin, 0L);
    }

    private static long d(long j10, long j11, int i10) {
        return (Math.max(0L, j10 - j11) * 8000000) / ((long) i10);
    }

    public long c(long j10) {
        return d(j10, this.f63600b, this.f63603e);
    }

    @Override
    public long getDurationUs() {
        return this.f63604f;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        if (this.f63602d == -1 && !this.f63605g) {
            return new m0.a(new n0(0L, this.f63600b));
        }
        long jB = b(j10);
        long jC = c(jB);
        n0 n0Var = new n0(jC, jB);
        if (this.f63602d != -1 && jC < j10) {
            int i10 = this.f63601c;
            if (((long) i10) + jB < this.f63599a) {
                long j11 = jB + ((long) i10);
                return new m0.a(n0Var, new n0(c(j11), j11));
            }
        }
        return new m0.a(n0Var);
    }

    @Override
    public boolean isSeekable() {
        return this.f63602d != -1 || this.f63605g;
    }
}
