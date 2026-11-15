package d3;

import android.util.Pair;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.m0;
import k2.n0;
import y2.l;

final class c implements g {

    private final long[] f58853a;

    private final long[] f58854b;

    private final long f58855c;

    private c(long[] jArr, long[] jArr2, long j10) {
        this.f58853a = jArr;
        this.f58854b = jArr2;
        this.f58855c = j10 == C.TIME_UNSET ? a1.R0(jArr2[jArr2.length - 1]) : j10;
    }

    public static c b(long j10, l lVar, long j11) {
        int length = lVar.f76125e.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += (long) (lVar.f76123c + lVar.f76125e[i12]);
            j12 += (long) (lVar.f76124d + lVar.f76126f[i12]);
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new c(jArr, jArr2, j11);
    }

    private static Pair c(long j10, long[] jArr, long[] jArr2) {
        int iH = a1.h(jArr, j10, true, true);
        long j11 = jArr[iH];
        long j12 = jArr2[iH];
        int i10 = iH + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) ((j13 == j11 ? 0.0d : (j10 - j11) / (j13 - j11)) * (jArr2[i10] - j12))) + j12));
    }

    @Override
    public long a() {
        return -1L;
    }

    @Override
    public int g() {
        return -2147483647;
    }

    @Override
    public long getDurationUs() {
        return this.f58855c;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        Pair pairC = c(a1.y1(a1.q(j10, 0L, this.f58855c)), this.f58854b, this.f58853a);
        return new m0.a(new n0(a1.R0(((Long) pairC.first).longValue()), ((Long) pairC.second).longValue()));
    }

    @Override
    public long getTimeUs(long j10) {
        return a1.R0(((Long) c(j10, this.f58853a, this.f58854b).second).longValue());
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
