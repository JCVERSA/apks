package y1;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.h;
import z1.i;

public final class g implements e {

    private final h f76087a;

    private final long f76088b;

    public g(h hVar, long j10) {
        this.f76087a = hVar;
        this.f76088b = j10;
    }

    @Override
    public long a(long j10, long j11) {
        return this.f76087a.f63593d[(int) j10];
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
        h hVar = this.f76087a;
        int i10 = (int) j10;
        return new i(null, hVar.f63592c[i10], hVar.f63591b[i10]);
    }

    @Override
    public long e(long j10, long j11) {
        return this.f76087a.b(j10 + this.f76088b);
    }

    @Override
    public long f(long j10) {
        return this.f76087a.f63590a;
    }

    @Override
    public boolean g() {
        return true;
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f76087a.f63594e[(int) j10] - this.f76088b;
    }

    @Override
    public long h() {
        return 0L;
    }

    @Override
    public long i(long j10, long j11) {
        return this.f76087a.f63590a;
    }
}
