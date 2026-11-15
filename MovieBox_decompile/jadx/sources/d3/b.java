package d3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.math.RoundingMode;
import k2.h0;
import k2.m0;

final class b implements g {

    private final long f58850a;

    private final int f58851b;

    private final h0 f58852c;

    public b(long j10, long j11, long j12) {
        this.f58852c = new h0(new long[]{j11}, new long[]{0}, j10);
        this.f58850a = j12;
        int i10 = -2147483647;
        if (j10 == C.TIME_UNSET) {
            this.f58851b = -2147483647;
            return;
        }
        long jG1 = a1.g1(j11 - j12, 8L, j10, RoundingMode.HALF_UP);
        if (jG1 > 0 && jG1 <= 2147483647L) {
            i10 = (int) jG1;
        }
        this.f58851b = i10;
    }

    @Override
    public long a() {
        return this.f58850a;
    }

    public boolean b(long j10) {
        return this.f58852c.c(j10, 100000L);
    }

    public void c(long j10, long j11) {
        if (b(j10)) {
            return;
        }
        this.f58852c.b(j10, j11);
    }

    void d(long j10) {
        this.f58852c.d(j10);
    }

    @Override
    public int g() {
        return this.f58851b;
    }

    @Override
    public long getDurationUs() {
        return this.f58852c.getDurationUs();
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        return this.f58852c.getSeekPoints(j10);
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f58852c.getTimeUs(j10);
    }

    @Override
    public boolean isSeekable() {
        return this.f58852c.isSeekable();
    }
}
