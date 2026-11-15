package y9;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import z9.i;

public final class g implements e {

    private final i9.d f76176a;

    private final long f76177b;

    public g(i9.d dVar, long j10) {
        this.f76176a = dVar;
        this.f76177b = j10;
    }

    @Override
    public long a(long j10, long j11) {
        return this.f76176a.f61895d[(int) j10];
    }

    @Override
    public long b(long j10, long j11) {
        return 0L;
    }

    @Override
    public long c(long j10, long j11) {
        return C.TIME_UNSET;
    }

    @Override
    public i d(long j10) {
        i9.d dVar = this.f76176a;
        int i10 = (int) j10;
        return new i(null, dVar.f61894c[i10], dVar.f61893b[i10]);
    }

    @Override
    public long e(long j10, long j11) {
        return this.f76176a.b(j10 + this.f76177b);
    }

    @Override
    public long f(long j10) {
        return this.f76176a.f61892a;
    }

    @Override
    public boolean g() {
        return true;
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f76176a.f61896e[(int) j10] - this.f76177b;
    }

    @Override
    public long h() {
        return 0L;
    }

    @Override
    public long i(long j10, long j11) {
        return this.f76176a.f61892a;
    }
}
